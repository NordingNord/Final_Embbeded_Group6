#include "cnn.hpp"

/*
 * Convert float array to fixed array
 */
template <const sizetype size>
void float_to_fixed(float (&float_array)[size], fixed (&fixed_array)[size])
{
	for (sizetype i = 0; i < size; i++)
	{
		fixed_array[i] = float_array[i];
	}
}

/*
 * Convert fixed array to float array
 */
template <const sizetype size>
void fixed_to_float(fixed (&fixed_array)[size], float (&float_array)[size])
{
	for (sizetype i = 0; i < size; i++)
	{
		float_array[i] = fixed_array[i];
	}
}

// void set3DFloatArray(const int array_dims[3], float* array, float value)
// {
// 	set3DFloatArray1: for (int i = 0; i < array_dims[0]; i++)
//     {
// 		set3DFloatArray1_2: for (int ii = 0; ii < array_dims[1]; ii++)
//         {
// 			set3DFloatArray1_3: for (int iii = 0; iii < array_dims[2]; iii++)
//             {
//                 array[i*array_dims[1]*array_dims[2] + ii*array_dims[2] + iii] = value;
//             }
//         }
//     }
// }

// void set1DFloatArray(const int* array_length, float* array, float value)
// {
// 	set1DFloatArray1: for (int i = 0; i < array_length[0]; i++)
//     {
//         array[i] = value;
//     }
    
// }

/*
 * Rescale 3d array
 */
template <const sizetype size_1, const sizetype size_2, const sizetype size_3>
void rescale_3d(fixed (&array)[size_1][size_2][size_3])
{
	rescale1: for (sizetype i = 0; i < size_1; i++)
    {
		rescale1_2: for (sizetype ii = 0; ii < size_2; ii++)
        {
			rescale1_3: for (sizetype iii = 0; iii < size_3; iii++)
            {
                array[i][ii][iii] /= 255.0;
            }
        }
    }    
}


/*
*   Set value to 0 if negative
*/
void relu(fixed &input)
{
	if (input < 0)
		input = 0;
}


/*
*   This assumes kernel is 3x3, stride is (1,1), and padding is valid
*   Output is summed using local array, set to size max kernel number of all conv2d layers!
*   output_sum array is partitioned to smallest kernel number of all conv2d layers!
*/
template <const sizetype input_size_1, const sizetype input_size_2, const sizetype input_size_3,
			const sizetype weights_size_1, const sizetype weights_size_2, const sizetype weights_size_3, const sizetype weights_size_4,
			const sizetype bias_size,
			const sizetype output_size_1, const sizetype output_size_2, const sizetype output_size_3>
void conv2d(fixed (&input)[input_size_1][input_size_2][input_size_3],
            const fixed (&weights)[weights_size_1][weights_size_2][weights_size_3][weights_size_4],
			const fixed (&bias)[bias_size],
            fixed (&output)[output_size_1][output_size_2][output_size_3])
{
    // Convolution
    // Input rows
	conv2d1: for (sizetype i = 1; i < input_size_1 - 1; i++)
    {
        // Input columns
		conv2d1_2: for (sizetype ii = 1; ii < input_size_2 - 1; ii++)
        {
            // Kernel number
			conv2d1_3: for (sizetype iii = 0; iii < weights_size_4; iii++)
            {
            	// Add bias
            	fixed output_sum = bias[iii];
                // Input and kernel channels
            	conv2d1_4: for (sizetype iv = 0; iv < input_size_3; iv++)
                {
                    // Kernel rows
            		conv2d1_5: for (int v = -1; v < 2; v++)
                    {
                        // Kernel cols
            			conv2d1_6: for (int vi = -1; vi < 2; vi++)
                        {
                        	output_sum 
                                +=
                                input[(i + v)][(ii + vi)][iv] 
                                *
                                weights[(v + 1)][(vi + 1)][iv][iii];
                            
                        }
                        
                    }
                }
                // Apply relu activiation function
                relu(output_sum);
                output[(i - 1)][(ii - 1)][iii]
                    = output_sum;
            }
        }
    }
}

/*
*   This assumes filter is 2x2, stride is (2,2), and padding is valid
*/
template <const sizetype input_size_1, const sizetype input_size_2, const sizetype input_size_3,
            const sizetype output_size_1, const sizetype output_size_2, const sizetype output_size_3>
void max_pooling2d(fixed (&input)[input_size_1][input_size_2][input_size_3],
                fixed (&output)[output_size_1][output_size_2][output_size_3])
{
    // Input rows
	max_pooling2d1: for (sizetype i = 0; i < input_size_1 - 1; i += 2)
    {
        // Input cols
		max_pooling2d1_2: for (sizetype ii = 0; ii < input_size_2 - 1; ii += 2)
        {
            // Input channels
			max_pooling2d1_3: for (sizetype iii = 0; iii < input_size_3; iii++)
            {
                fixed maxVal = 0;
                // Filter rows
                max_pooling2d1_4: for (uint iv = 0; iv < 2; iv++)
                {
                    // Filter cols
                	max_pooling2d1_5: for (uint v = 0; v < 2; v++)
                    {
                    	fixed input_val = input[(i + iv)][(ii + v)][iii];
                        if (input_val > maxVal)
                        {
                            maxVal = input_val;
                        }
                    }
                }
                output[(i>>1)][(ii>>1)][iii] = maxVal;
            }
        }
    }
}

/*
* 	Get size of 3d array in 1d form
*/
template <const sizetype size_1, const sizetype size_2, const sizetype size_3>
sizetype size_of_array(fixed (&array)[size_1][size_2][size_3])
{
	return size_1*size_2*size_3;
}

/*
* 	Convert 3d array to 1d array
*/
template <const sizetype size_1, const sizetype size_2, const sizetype size_3>
void test_things_for_me(fixed (&array)[size_1][size_2][size_3], fixed (&output)[size_1*size_2*size_3])
{
	for (sizetype i = 0; ; size_1)
		for (sizetype ii = 0; ; size_2)
			for (sizetype iii = 0; ; size_3)
				output[i*size_2*size_3 + ii*size_3 + iii] = array[i][ii][iii];
}


/*
*   Dense with relu
*/
template <const sizetype input_size,
            const sizetype weights_size_1, const sizetype weights_size_2,
            const sizetype bias_size,
            const sizetype output_size>
void dense_relu(fixed (&input)[input_size],
            const fixed (&weights)[weights_size_1][weights_size_2],
            const fixed (&bias)[bias_size],
            fixed (&output)[output_size])
{
	dense_relu1: for (sizetype i = 0; i < weights_size_2; i++)
    {
		dense_relu1_2: for (sizetype ii = 0; ii < weights_size_1; ii++)
        {
            output[i] += input[ii] * weights[ii][i];
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
template <const sizetype input_size_1, const sizetype input_size_2, const sizetype input_size_3,
            const sizetype weights_size_1, const sizetype weights_size_2,
            const sizetype bias_size,
            const sizetype output_size>
void dense(fixed (&input)[input_size_1][input_size_2][input_size_3], 
            const fixed (&weights)[weights_size_1][weights_size_2],
            const fixed (&bias)[bias_size],
            fixed (&output)[output_size])
{
	dense1: for (sizetype i = 0; i < weights_size_2; i++)
    {
		dense1_2: for (sizetype ii = 0; ii < weights_size_1; ii++)
        {
            output[i] += input[ii] * weights[ii][i];
        }
        // Add bias
        output[i] += bias[i];
    }
}

void infer(hls::stream<int> &infer_input, hls::stream<float> &infer_output)
{
	// Define ip ports
#pragma HLS INTERFACE axis port=infer_input
#pragma HLS INTERFACE axis port=infer_output
#pragma HLS INTERFACE s_axilite port=return

    // Insert image from stream in input array
    int single_pixel = 0;
    get_input1: for (sizetype i = 0; i < input_dim_1; i++)
    {
		get_input1_2: for (sizetype ii = 0; ii < input_dim_2; ii++)
		{
			get_input1_3: for (sizetype iii = 0; iii < input_dim_3; iii++)
			{
				infer_input >> single_pixel;
				cnn_input[i][ii][iii] = (fixed)single_pixel / 255;
			}
		}
    }
    
    // // Layer 1 rescaling
    // layer_1_rescale: rescale_3d(image_input);


    // Layer 2 convolution
    layer_2_conv2d: conv2d(cnn_input,
            layer_2_weights,
            layer_2_bias,
            layer_2_output);
    

    // Layer 3 max pooling
    layer_3_max_pooling2d: max_pooling2d(layer_2_output,
                layer_3_output);


    // Layer 4 convolution
    layer_4_conv2d: conv2d(layer_3_output,
            layer_4_weights,
            layer_4_bias,
            layer_4_output);


    // Layer 5 max pooling
    layer_5_max_pooling2d: max_pooling2d(layer_4_output,
                layer_5_output);


    // Layer 6 convolution
    layer_6_conv2d: conv2d(layer_5_output,
            layer_6_weights,
            layer_6_bias,
            layer_6_output);


    // Layer 7 max pooling
    layer_7_max_pooling2d: max_pooling2d(layer_6_output,
                layer_7_output);


    // Layer 8 flatten
    test_things_for_me(layer_7_output, layer_8_output);

    // // Layer 9 dense
    // layer_9_dense_relu: dense_relu(layer_7_output,
    //         layer_9_weights,
    //         layer_9_bias,
    //         layer_9_output);

    // // Layer 10 dense
    // layer_10_dense_relu: dense_relu(layer_9_output,
    //         layer_10_weights,
    //         layer_10_bias,
    //         layer_10_output);


    // // Layer 11 dense
    // layer_11_dense_relu: dense_relu(layer_10_output,
    //         layer_11_weights,
    //         layer_11_bias,
    //         layer_11_output);

	
    // // Layer 12 dense
    
    // layer_12_dense: dense(layer_11_output,
    //         layer_12_weights,
    //         layer_12_bias,
    //         layer_12_output);


    //Send result
    send_result: for (int i = 0; i < output_dim_1; i++)
    {
    	infer_output << (float)layer_12_output[i];
    }

}
