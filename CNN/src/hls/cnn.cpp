#include "hls_stream.h"
#include "layerInfo.hpp"

#define NUM_RESULTS 4

void set3DFloatArray(const int array_dims[3], float* array, float value)
{
    for (int i = 0; i < array_dims[0]; i++)
    {
        for (int ii = 0; ii < array_dims[1]; ii++)
        {
            for (int iii = 0; iii < array_dims[2]; iii++)
            {
                array[i*array_dims[1]*array_dims[2] + ii*array_dims[2] + iii] = value;
            }
        }
    }
}

void set1DFloatArray(const int* array_length, float* array, float value)
{
    for (int i = 0; i < array_length[0]; i++)
    {
        array[i] = value;
    }
    
}

void rescale(const int array_dims[3], float* array)
{
    for (int i = 0; i < array_dims[0]; i++)
    {
        for (int ii = 0; ii < array_dims[1]; ii++)
        {
            for (int iii = 0; iii < array_dims[2]; iii++)
            {
                array[i*array_dims[1]*array_dims[2] + ii*array_dims[2] + iii] /= 255.0;
            }
        }
    }    
}


/*
*   Set value to 0 if negative
*/
void relu(float& input)
{
    input = input > 0 ? input : 0;
}


/*
*   This assumes kernel is 3x3, stride is (1,1), and padding is valid
*/
void conv2d(const int input_dims[3], float* input, 
            const int weight_dims[4], const float* weights,
			const float* bias,
            const int output_dims[3], float* output)
{
	const int input_dim_0 = input_dims[0];
	const int input_dim_1 = input_dims[1];
	const int input_dim_2 = input_dims[2];
	const int output_dim_1 = output_dims[1];
	const int output_dim_2 = output_dims[2];
    const int weight_dim_1 = weight_dims[1];
    const int weight_dim_2 = weight_dims[2];
    const int weight_dim_3 = weight_dims[3];
    // Convolution
    // Input rows
    for (int i = 1; i < input_dim_0 - 1; i++)
    {
        // Input columns
        for (int ii = 1; ii < input_dim_1 - 1; ii++)
        {
            // Kernel number
            for (int iii = 0; iii < weight_dim_3; iii++)
            {
                int output_index = (i - 1)*output_dim_1*output_dim_2 + 
                    (ii - 1)*output_dim_2 + 
                    iii;
                // Input and kernel channels
                for (int iv = 0; iv < input_dim_2; iv++)
                {
                    // Kernel rows
                    for (int v = -1; v < 2; v++)
                    {
                        // Kernel cols
                        for (int vi = -1; vi < 2; vi++)
                        {
                            int input_index = (i + v)*input_dim_1*input_dim_2 +
                                (ii + vi)*input_dim_2 + 
                                iv;
                            int weight_index = (v + 1)*weight_dim_1*weight_dim_2*weight_dim_3 + 
                                (vi + 1)*weight_dim_2*weight_dim_3 + 
                                iv*weight_dim_3 + 
                                iii;
                            output[output_index] += input[input_index] * weights[weight_index];
                            
                        }
                        
                    }
                }
                // Add bias
                output[(i - 1)*output_dim_1*output_dim_2 + (ii - 1)*output_dim_2 + iii] += bias[iii];
                // Apply relu activiation function
                relu(output[(i - 1)*output_dim_1*output_dim_2 + (ii - 1)*output_dim_2 + iii]);
            }
        }
    }
}

/*
*   This assumes filter is 2x2, stride is arbitrary, and padding is valid
*/
void max_pooling2d(const int input_dims[3], float* input, 
                const int stride[2],
                const int output_dims[3], float* output)
{
    // Input rows
    for (int i = 0; i < input_dims[0] - 1; i += stride[0])
    {
        // Input cols
        for (int ii = 0; ii < input_dims[1] - 1; ii += stride[1])
        {
            // Input channels
            for (int iii = 0; iii < input_dims[2]; iii++)
            {
                float maxVal = 0;
                // Filter rows
                for (int iv = 0; iv < 2; iv++)
                {
                    // Filter cols
                    for (int v = 0; v < 2; v++)
                    {
                        if (input[(i + iv)*input_dims[1]*input_dims[2] + (ii + v)*input_dims[2] + iii] > maxVal)
                        {
                            maxVal = input[(i + iv)*input_dims[1]*input_dims[2] + (ii + v)*input_dims[2] + iii];
                        }
                    }
                }
                output[(i/stride[0])*output_dims[1]*output_dims[2] + (ii/stride[1])*output_dims[2] + iii] = maxVal;
            }
        }
    }
}


/*
*   Dense with relu
*/
void dense_relu(float* input, 
            const int weight_dims[2], const float* weights,
            const float* bias,
            float* output)
{
    for (int i = 0; i < weight_dims[1]; i++)
    {
        for (int ii = 0; ii < weight_dims[0]; ii++)
        {
            output[i] += input[ii] * weights[ii*weight_dims[1] + i];
        }
        // Add bias
        output[i] += bias[i];
        // Apply relu activation function
        relu(output[i]);
    }
}

/*
*   Dense
*/
void dense(float* input,
            const int weight_dims[2], const float* weights,
            const float* bias,
            float* output)
{
    for (int i = 0; i < weight_dims[1]; i++)
    {
        for (int ii = 0; ii < weight_dims[0]; ii++)
        {
            output[i] += input[ii] * weights[ii*weight_dims[1] + i];
        }
        // Add bias
        output[i] += bias[i];
    }
}

void infer(hls::stream<int> &infer_input, hls::stream<float> &infer_output)
{

    ///////////////////////////////////////////////////////////////
    // Test using image
    // Get image
    float image_input[model_input_dims[0]*model_input_dims[1]*model_input_dims[2]];

    int single_pixel = 0;
    for (int i = 0; i < model_input_dims[0]*model_input_dims[1]*model_input_dims[2]; i++)
    {
    	infer_input >> single_pixel;
    	image_input[i] = (float)single_pixel;
    }
    

    // Layer 1 rescaling
    rescale(model_input_dims, image_input);


    // Layer 2 convolution
    float layer_2_output[layer_2_output_dims[0]*layer_2_output_dims[1]*layer_2_output_dims[2]];
#pragma HLS array_partition variable=layer_2_output block factor=10

    set3DFloatArray(layer_2_output_dims, layer_2_output, 0);

    conv2d(model_input_dims, image_input, 
            layer_2_weights_dims, layer_2_weights, 
            layer_2_bias,
            layer_2_output_dims, layer_2_output);
    

    // Layer 3 max pooling
    float layer_3_output[layer_3_output_dims[0]*layer_3_output_dims[1]*layer_3_output_dims[2]];
#pragma HLS array_partition variable=layer_3_output block factor=2

    set3DFloatArray(layer_3_output_dims, layer_3_output, 0);

    max_pooling2d(layer_2_output_dims, layer_2_output, layer_3_strides, 
                layer_3_output_dims, layer_3_output);


    // Layer 4 convolution
    float layer_4_output[layer_4_output_dims[0]*layer_4_output_dims[1]*layer_4_output_dims[2]];
#pragma HLS array_partition variable=layer_4_output block factor=2

    set3DFloatArray(layer_4_output_dims, layer_4_output, 0);

    conv2d(layer_3_output_dims, layer_3_output,
            layer_4_weights_dims, layer_4_weights,
            layer_4_bias,
            layer_4_output_dims, layer_4_output);

    /*
    // Layer 5 max pooling
    float layer_5_output[layer_5_output_dims[0]*layer_5_output_dims[1]*layer_5_output_dims[2]];
    set3DFloatArray(layer_5_output_dims, layer_5_output, 0);

    max_pooling2d(layer_4_output_dims, layer_4_output, layer_5_strides, 
                layer_5_output_dims, layer_5_output);

    // Layer 6 convolution
    float layer_6_output[layer_6_output_dims[0]*layer_6_output_dims[1]*layer_6_output_dims[2]];

    set3DFloatArray(layer_6_output_dims, layer_6_output, 0);

    conv2d(layer_5_output_dims, layer_5_output,
            layer_6_weights_dims, layer_6_weights,
            layer_6_bias,
            layer_6_output_dims, layer_6_output);

    // Layer 7 max pooling
    float layer_7_output[layer_7_output_dims[0]*layer_7_output_dims[1]*layer_7_output_dims[2]];
    set3DFloatArray(layer_7_output_dims, layer_7_output, 0);

    max_pooling2d(layer_6_output_dims, layer_6_output, layer_7_strides, 
                layer_7_output_dims, layer_7_output);

    // Layer 8 flatten
    // Arrays are already flattened!
    // So layer_7_output is just used

    // Layer 9 dense
    float layer_9_output[layer_9_output_dims[0]];
    set1DFloatArray(layer_9_output_dims, layer_9_output, 0);
    dense_relu(layer_7_output,
            layer_9_weights_dims, layer_9_weights,
            layer_9_bias,
            layer_9_output);

    // Layer 10 dense
    float layer_10_output[layer_10_output_dims[0]];
    set1DFloatArray(layer_10_output_dims, layer_10_output, 0);
    dense_relu(layer_9_output,
            layer_10_weights_dims, layer_10_weights,
            layer_10_bias,
            layer_10_output);


    // Layer 11 dense
    float layer_11_output[layer_11_output_dims[0]];
    set1DFloatArray(layer_11_output_dims, layer_11_output, 0);
    dense_relu(layer_10_output,
            layer_11_weights_dims, layer_11_weights,
            layer_11_bias,
            layer_11_output);

	*/
    // Layer 12 dense
    float layer_12_output[layer_12_output_dims[0]];
    set1DFloatArray(layer_12_output_dims, layer_12_output, 0);
    /*
    dense(layer_11_output,
            layer_12_weights_dims, layer_12_weights,
            layer_12_bias,
            layer_12_output);
    */
    
    //Send result
    for (int i = 0; i < layer_12_output_dims[0]; i++)
    {
    	infer_output << layer_12_output[i];
    }

}
