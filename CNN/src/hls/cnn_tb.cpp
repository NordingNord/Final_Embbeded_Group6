#include <stdio.h>
#include <string>
#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "types.hpp"

#ifndef LAYER_INFO
#define LAYER_INFO
#include "layerInfo.hpp"
#endif

#include "testImage.hpp"

void infer(long_uint_stream &infer_input, long_uint_stream &infer_output);

uint image_num = 0;

int test_using_image(int image_array[input_dim_1][input_dim_2][input_dim_3],
		float prediction_array[output_dim_1])
{
	printf("\nImage: %d\n", image_num++);
	long_uint_stream stream_in;
	long_uint_stream stream_out;

	long_uint_package input_package;
	uint8_t *input_package_pointer = (uint8_t*)&input_package.data;
	int *image_pointer = (int*)image_array;
	for (int i = 0; i < input_dim_1*input_dim_2*input_dim_3; i += 4)
	{
		input_package_pointer[0] = (uint8_t)image_pointer[i];
		input_package_pointer[1] = (uint8_t)image_pointer[i+1];
		input_package_pointer[2] = (uint8_t)image_pointer[i+2];
		input_package_pointer[3] = (uint8_t)image_pointer[i+3];

		stream_in << input_package;
	}

	infer(stream_in, stream_out);

	float_uint results[output_dim_1];
	long_uint_package output_package;

	// Check results
	bool result_same = true;
	bool type_same = true;
	int result_type = 0;
	int prediction_type = 0;
	for (int i = 0; i < output_dim_1; i++)
	{
		stream_out >> output_package;
		results[i].uint_val = output_package.data;
		printf("%f	| should be: %f 	| diff:	%f\n", results[i].float_val, prediction_array[i], results[i].float_val-prediction_array[i]);
		if ((int)(prediction_array[i]*10000) != (int)(results[i].float_val*10000))
		{
			result_same = false;
		}
		if (results[i].float_val > results[result_type].float_val)
		{
			result_type = i;
		}
		if (prediction_array[i] > prediction_array[prediction_type])
		{
			prediction_type = i;
		}
	}

	printf("type: %d	| should be: %d\n", result_type, prediction_type);
	if (result_type != prediction_type)
	{
		type_same = false;
	}



	// Show results
	if (result_same && type_same)
		printf("Results and type are correct!\n");
	else if (type_same) {
		printf("Type is correct!\n");
	}
	else
	{
		printf("######\n");
		printf("######Wrong, check layers are written correctly######\n");
		printf("######\n");
		return 1;
	}
	return 0;
}

int main()
{


	test_using_image(test_image0, prediction0);
	test_using_image(test_image1, prediction1);
	test_using_image(test_image2, prediction2);
	test_using_image(test_image3, prediction3);
	test_using_image(test_image4, prediction4);
	test_using_image(test_image5, prediction5);
	test_using_image(test_image6, prediction6);
	test_using_image(test_image7, prediction7);
	test_using_image(test_image8, prediction8);
	test_using_image(test_image9, prediction9);



    return 0;
}
