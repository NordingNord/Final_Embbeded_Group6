/******************************************************************************
 * Copyright (C) 2010 - 2020 Xilinx, Inc.  All rights reserved.
 * SPDX-License-Identifier: MIT
 ******************************************************************************/

/*****************************************************************************/
/***************************** Include Files *********************************/
#include "xaxidma.h"
#include "xparameters.h"
#include "xdebug.h"
#include "xinfer.h"
#include "testImage.h"

#if defined(XPAR_UARTNS550_0_BASEADDR)
#include "xuartns550_l.h"       /* to use uartns550 */
#endif

/******************** Constant Definitions **********************************/

/*
 * Device hardware build related constants.
 */

#define DMA_DEV_ID		XPAR_AXIDMA_0_DEVICE_ID
#define INFER_DEV_ID	XPAR_XINFER_0_DEVICE_ID

#ifdef XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#define DDR_BASE_ADDR		XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#elif defined (XPAR_MIG7SERIES_0_BASEADDR)
#define DDR_BASE_ADDR	XPAR_MIG7SERIES_0_BASEADDR
#elif defined (XPAR_MIG_0_BASEADDR)
#define DDR_BASE_ADDR	XPAR_MIG_0_BASEADDR
#elif defined (XPAR_PSU_DDR_0_S_AXI_BASEADDR)
#define DDR_BASE_ADDR	XPAR_PSU_DDR_0_S_AXI_BASEADDR
#endif

#ifndef DDR_BASE_ADDR
#warning CHECK FOR THE VALID DDR ADDRESS IN XPARAMETERS.H, \
		DEFAULT SET TO 0x01000000
#define MEM_BASE_ADDR		0x01000000
#else
#define MEM_BASE_ADDR		(DDR_BASE_ADDR + 0x1000000)
#endif

#define TX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00300000)
#define RX_BUFFER_HIGH		(MEM_BASE_ADDR + 0x004FFFFF)

/**************************** Type Definitions *******************************/


/***************** Macros (Inline Functions) Definitions *********************/


/************************** Function Prototypes ******************************/

#if (!defined(DEBUG))
extern void xil_printf(const char *format, ...);
#endif

int TestInfer(u16 DMADeviceId, u16 InferDeviceId);
int doTestIteration(int* image_array, float* prediction_array);
int inserImage(int* image_array);
int checkResult(float* prediction_array);

/************************** Variable Definitions *****************************/
/*
 * Device instance definitions
 */
XAxiDma AxiDma;
XInfer InferInstance;

#define INPUT_SIZE_BYTE		60*60*1	// Input image is 60*60 grayscale (8 bit)
#define OUTPUT_SIZE_BYTE	4*4		// Output is certainty of 4 classes (32 bit)

// Union to convert between float and uint
union float_uint {
	float float_val;
	uint32_t uint_val;
};


/*****************************************************************************/
/**
 * The entry point for this example. It invokes the example function,
 * and reports the execution status.
 *
 * @param	None.
 *
 * @return
 *		- XST_SUCCESS if test finishes successfully
 *		- XST_FAILURE if test fails.
 *
 * @note		None.
 *
 ******************************************************************************/
int main()
{
	int Status;

	xil_printf("\r\n----------------------- \r\n");
	xil_printf("\r\n--- Entering main() --- \r\n");

	/* Run the poll example for simple transfer */
	Status = TestInfer(DMA_DEV_ID, INFER_DEV_ID);

	if (Status != XST_SUCCESS) {
		xil_printf("\r\n--- TestInfer Failed ---\r\n");
		return XST_FAILURE;
	}

	xil_printf("Successfully ran TestInfer\r\n");

	xil_printf("--- Exiting main() --- \r\n");

	return XST_SUCCESS;

}


/*****************************************************************************/
/**
 * The test of infer with DMA through polling.
 *
 * @return
 *		- XST_SUCCESS if test finishes successfully
 *		- XST_FAILURE if error occurs
 *
 *
 ******************************************************************************/
int TestInfer(u16 DMADeviceId, u16 InferDeviceId)
{
	XAxiDma_Config *AXICfgPtr;
	XInfer_Config *InferCfgPrt;
	int Status;
	u8 *TxBufferPtr;
	u8 *RxBufferPtr;

	xil_printf("\r\n--- Setting buffer addresses --- \r\n");
	TxBufferPtr = (u8 *)TX_BUFFER_BASE;
	RxBufferPtr = (u8 *)RX_BUFFER_BASE;

	xil_printf("TxBufferPtr: %x - %x\r\n",TxBufferPtr, TxBufferPtr+INPUT_SIZE_BYTE);
	xil_printf("RxBufferPtr: %x - %x\r\n",RxBufferPtr, RxBufferPtr+OUTPUT_SIZE_BYTE);

	/* Initialize the XAxiDma device.
	 */
	xil_printf("\r\n--- Initializing DMA --- \r\n");
	AXICfgPtr = XAxiDma_LookupConfig(DMADeviceId);
	if (!AXICfgPtr) {
		xil_printf("No config found for %d\r\n", DMADeviceId);
		return XST_FAILURE;
	}
	xil_printf("Here1");

	Status = XAxiDma_CfgInitialize(&AxiDma, AXICfgPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}
	xil_printf("Here2");
	if(XAxiDma_HasSg(&AxiDma)){
		xil_printf("Device configured as SG mode \r\n");
		return XST_FAILURE;
	}
	xil_printf("\r\n--- DMA Intialized --- \r\n");

	/* Initialize the XInfer device
	 */
	xil_printf("\r\n--- Initializing Infer --- \r\n");
	InferCfgPrt = XInfer_LookupConfig(InferDeviceId);
	if (!InferCfgPrt) {
		xil_printf("No config found for %d\r\n", InferDeviceId);
		return XST_FAILURE;
	}

	Status = XInfer_CfgInitialize(&InferInstance, InferCfgPrt);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}
	xil_printf("\r\n--- Infer Intialized --- \r\n");

	/* Disable interrupts, we use polling mode
	 */
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
			XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
			XAXIDMA_DMA_TO_DEVICE);

	xil_printf("\r\n--- Disabled interrupts --- \r\n");





	Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, INPUT_SIZE_BYTE);
	Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, OUTPUT_SIZE_BYTE);
	xil_printf("\r\n--- Flushed buffers --- \r\n");

	/*
	 * Do the actual test a couple times to verify
	 */
	Status = doTestIteration((int*)test_image8, prediction8);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	Status = doTestIteration((int*)test_image2, prediction2);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	Status = doTestIteration((int*)test_image9, prediction9);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	Status = doTestIteration((int*)test_image0, prediction0);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/*
 * Do an iteration of testing
 *
 * @return
 *		- XST_SUCCESS if insertion finishes successfully
 *		- XST_FAILURE if error occurs
 */
int doTestIteration(int* image_array, float* prediction_array)
{
	int Status;
	u8* TxBufferPtr = (u8 *)TX_BUFFER_BASE;
	u8* RxBufferPtr = (u8 *)RX_BUFFER_BASE;

	Status = inserImage(image_array);
	if (Status != XST_SUCCESS) {
		xil_printf("Insertion of image failed %d\r\n", Status);
		return XST_FAILURE;
	}

	xil_printf("\r\n--- Inserted image in TxBufferPtr --- \r\n");
	/* Flush the buffers before the DMA transfer, in case the Data Cache
	 * is enabled
	 */

	Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, INPUT_SIZE_BYTE);
	Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, OUTPUT_SIZE_BYTE);
	xil_printf("\r\n--- Flushed buffers --- \r\n");

	XInfer_Start(&InferInstance);
	xil_printf("\r\n--- Started Infer --- \r\n");

	Status = XAxiDma_SimpleTransfer(&AxiDma,(UINTPTR) TxBufferPtr,
			INPUT_SIZE_BYTE, XAXIDMA_DMA_TO_DEVICE);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	else {
		xil_printf("\r\n--- XAxiDma_SimpleTransfer TxBufferPtr Success --- \r\n");
	}

	while (XAxiDma_Busy(&AxiDma,XAXIDMA_DMA_TO_DEVICE)) {
		/* Wait */
	}
	xil_printf("\r\n--- DMA_TO_DEVICE done --- \r\n");

	while (XInfer_IsDone(&InferInstance) == 0) {
		/* Wait */
	}
	xil_printf("\r\n--- Infer Done --- \r\n");

	/*
	for (int i = 0; i < INPUT_SIZE_BYTE/120; i++)
	{
		xil_printf("Send data: %u  \r\n", TxBufferPtr[i]);
	}*/

	Status = XAxiDma_SimpleTransfer(&AxiDma,(UINTPTR) RxBufferPtr,
			OUTPUT_SIZE_BYTE, XAXIDMA_DEVICE_TO_DMA);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	else {
		xil_printf("\r\n--- XAxiDma_SimpleTransfer RxBufferPtr Success --- \r\n");
	}

	while (XAxiDma_Busy(&AxiDma,XAXIDMA_DEVICE_TO_DMA)) {
		xil_printf("\r\n--- IM STUCK. HELP --- \r\n");
	}
	xil_printf("\r\n--- DEVICE_TO_DMA done --- \r\n");

	Status = checkResult(prediction_array);
	if (Status != XST_SUCCESS) {
		xil_printf("\r\n--- Failed try --- \r\n");
		return XST_FAILURE;
	}
	else {
		xil_printf("\r\n--- Success try --- \r\n");
	}
	return XST_SUCCESS;
}

/*
 * Insert image in TXBuffer
 *
 * @return
 *		- XST_SUCCESS if insertion finishes successfully
 *		- XST_FAILURE if error occurs
 */
int inserImage(int* image_array)
{
	u8 *TxBufferPtr;
	TxBufferPtr = (u8 *)TX_BUFFER_BASE;
	int *image_pointer = image_array;
	for (int i = 0; i < INPUT_SIZE_BYTE; i++)
	{
		TxBufferPtr[i] = image_pointer[i];
		//xil_printf("Send data: %u  \r\n", TxBufferPtr[i]);
	}
	return XST_SUCCESS;
}

/*
 * Check result with expected result
 *
 * @return
 *		- XST_SUCCESS if result correct
 *		- XST_FAILURE if result wrong
 */

int checkResult(float* prediction_array)
{
	xil_printf("\r\n--- Checking results --- \r\n");
	uint32_t* Rx32Ptr = (uint32_t*) RX_BUFFER_BASE;

	Xil_DCacheInvalidateRange((UINTPTR)Rx32Ptr, OUTPUT_SIZE_BYTE);

	float *prediction_pointer = prediction_array;
	union float_uint value;
	float max_result = 0;
	int result_type = 0;
	int prediction_type = 0;
	for (int i = 0; i < OUTPUT_SIZE_BYTE/4; i++)
	{
		// Get result and expected value and convert to xil_printf-able number
		value.uint_val = Rx32Ptr[i];
		float fval = value.float_val;
		int whole, thousandths;
		whole = fval;
		thousandths = (fval - whole) * 1000;
		float fval2 = prediction_pointer[i];
		int whole2 = fval2;
		int thousandths2 = (fval2 - whole2) * 1000;
		xil_printf("\rRxBufferPtr(32bit) [%d]=%d.%03d | expected [%d]=%d.%03d\r\n",i,whole, thousandths,i,whole2,thousandths2);
		if (value.float_val > max_result)
		{
			result_type = i;
			max_result = value.float_val;
		}
		if (prediction_pointer[i] > prediction_pointer[prediction_type])
		{
			prediction_type = i;
		}

	}
	xil_printf("type: %d	| should be: %d\n", result_type, prediction_type);
	if (result_type != prediction_type)
	{
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Type is correct!\n");
	}
	return XST_SUCCESS;
}