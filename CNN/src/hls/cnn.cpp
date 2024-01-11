#include "cnn.hpp"

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
*/
template <const sizetype input_size_1, const sizetype input_size_2, const sizetype input_size_3,
			const sizetype weights_size_1, const sizetype weights_size_2, const sizetype weights_size_3, const sizetype weights_size_4,
			const sizetype bias_size,
			const sizetype output_size_1, const sizetype output_size_2, const sizetype output_size_3>
void conv2d(fixed (&input)[input_size_1][input_size_2][input_size_3],
			const sizetype in_dim1, const sizetype in_dim2, const sizetype in_dim3,
            const fixed (&weights)[weights_size_1][weights_size_2][weights_size_3][weights_size_4],
			const fixed (&bias)[bias_size],
            fixed (&output)[output_size_1][output_size_2][output_size_3])
{
	fixed output_sum[weights_size_4] = { };
#pragma HLS array_partition variable=output_sum complete
    // Convolution
    // Input rows
	conv2d1: for (sizetype i = 1; i < in_dim1 - 1; i++)
    {
        // Input columns
		conv2d2: for (sizetype ii = 1; ii < in_dim2 - 1; ii++)
        {
			// Kernel number
			conv2d3_1: for (sizetype iii = 0; iii < weights_size_4; iii++)
			{
				// Add bias
				output_sum[iii] = bias[iii];
			}
			// Input and kernel channels
			conv2d3_2: for (sizetype iv = 0; iv < in_dim3; iv++)
			{
				// Kernel rows
				conv2d4: for (int v = -1; v < 2; v++)
				{
					// Kernel cols
					conv2d5: for (int vi = -1; vi < 2; vi++)
					{
						fixed input_val = input[(i + v)][(ii + vi)][iv];
						// Kernel number
						conv2d6: for (sizetype iii = 0; iii < weights_size_4; iii++)
						{
							output_sum[iii] += input_val * weights[(v + 1)][(vi + 1)][iv][iii];
						}
					}
				}
			}
			// Kernel number
			conv2d3_3: for (sizetype iii = 0; iii < weights_size_4; iii++)
			{
				// Apply relu activiation function
				relu(output_sum[iii]);
				output[i - 1][ii - 1][iii] = output_sum[iii];
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
				const sizetype in_dim1, const sizetype in_dim2, const sizetype in_dim3,
                fixed (&output)[output_size_1][output_size_2][output_size_3])
{
    // Input rows
	max_pooling2d1: for (sizetype i = 0; i < in_dim1 - 1; i += 2)
    {
        // Input cols
		max_pooling2d2: for (sizetype ii = 0; ii < in_dim2 - 1; ii += 2)
        {
            // Input channels
			max_pooling2d3: for (sizetype iii = 0; iii < in_dim3; iii++)
            {
                fixed maxVal = 0;
                // Filter rows
                max_pooling2d4: for (uint iv = 0; iv < 2; iv++)
                {
                    // Filter cols
                	max_pooling2d5: for (uint v = 0; v < 2; v++)
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
* 	Convert 3d array to 1d array
*/
template <const sizetype size_1, const sizetype size_2, const sizetype size_3,
		const sizetype size_4>
void array_3d_to_1d(fixed (&array)[size_1][size_2][size_3], fixed (&output)[size_4],
		const sizetype dim1, const sizetype dim2, const sizetype dim3)
{
	for (sizetype i = 0; i < dim1; i++)
		for (sizetype ii = 0; ii < dim2; ii++)
			for (sizetype iii = 0; iii < dim3; iii++)
				output[i*dim2*dim3 + ii*dim3 + iii] = array[i][ii][iii];
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
		// Add bias
		fixed output_sum = bias[i];
		dense_relu2: for (sizetype ii = 0; ii < weights_size_1; ii++)
        {
			output_sum += input[ii] * weights[ii][i];
        }

        output[i] = output_sum;
        // Apply relu activation function
        relu(output[i]);
    }
}

/*
*   Dense
*/
template <const sizetype input_size,
            const sizetype weights_size_1, const sizetype weights_size_2,
            const sizetype bias_size,
            const sizetype output_size>
void dense(fixed (&input)[input_size],
            const fixed (&weights)[weights_size_1][weights_size_2],
            const fixed (&bias)[bias_size],
            fixed (&output)[output_size])
{
	dense1: for (sizetype i = 0; i < weights_size_2; i++)
    {
		// Add bias
		fixed output_sum = bias[i];
		dense2: for (sizetype ii = 0; ii < weights_size_1; ii++)
        {
			output_sum += input[ii] * weights[ii][i];
        }

        output[i] = output_sum;
    }
}

/*
* 	Converts array values to probability distribution
*/
template <const sizetype size>
void softmax(fixed (&array)[size])
{
	softmax_fixed temp_array[size];
	softmax_fixed sum = 0;
	softmax1_1: for (sizetype i = 0; i < size; i++)
	{
		temp_array[i] = exp_reduce::exp((softmax_fixed)array[i]);
		sum += temp_array[i];
	}
	softmax1_2: for (sizetype i = 0; i < size; i++)
	{
		array[i] = temp_array[i] / sum;
	}
}

void infer(long_uint_stream &infer_input, long_uint_stream &infer_output)
{
	// Define ip ports
#pragma HLS INTERFACE axis port=infer_input
#pragma HLS INTERFACE axis port=infer_output
#pragma HLS INTERFACE s_axilite port=return

	// Define arrays
	static fixed cnn_input[input_dim1][input_dim2][input_dim3] = {};
	static fixed convolution_output[layer_2_dim1][layer_2_dim2][layer_2_dim3] = {};
	static fixed max_pooling_output[layer_3_dim1][layer_3_dim2][layer_3_dim3] = {};
	static fixed dense_output_a[layer_8_dim1] = {};
	static fixed dense_output_b[layer_9_dim1] = {};
	static fixed cnn_output[output_dim1] = {};

	// Partition arrays
//#pragma HLS array_partition variable=cnn_input complete dim=3
//#pragma HLS array_partition variable=cnn_input cyclic factor=3 dim=2
//#pragma HLS array_partition variable=cnn_input cyclic factor=3 dim=1

//#pragma HLS array_partition variable=layer_2_output cyclic factor=2 dim=3
#pragma HLS array_partition variable=convolution_output cyclic factor=2 dim=2
#pragma HLS array_partition variable=convolution_output cyclic factor=2 dim=1

//#pragma HLS array_partition variable=max_pooling_output cyclic factor=9 dim=3
//#pragma HLS array_partition variable=max_pooling_output cyclic factor=3 dim=2
//#pragma HLS array_partition variable=max_pooling_output cyclic factor=3 dim=1

//#pragma HLS array_partition variable=dense_output_a cyclic factor=2 dim=1
//#pragma HLS array_partition variable=dense_output_b cyclic factor=2 dim=1


    // Load image from stream to input array
	// Rescale at the same time
	long_uint_package pixel;
	uint8_t *pixel_pointer = (uint8_t*)&pixel.data;
	fixed *cnn_input_pointer = (fixed*)&cnn_input;
    get_input1: for (sizetype i = 0; i < input_dim1*input_dim2*input_dim3; i += 4)
    {
		infer_input >> pixel;

		cnn_input_pointer[i] = (fixed)((float)pixel_pointer[0] / 255.0);
		cnn_input_pointer[i+1] = (fixed)((float)pixel_pointer[1] / 255.0);
		cnn_input_pointer[i+2] = (fixed)((float)pixel_pointer[2] / 255.0);
		cnn_input_pointer[i+3] = (fixed)((float)pixel_pointer[3] / 255.0);
    }
    
    // Layer 1 rescaling
    // Already done in image load


    // Layer 2 convolution
    layer_2_conv2d: conv2d(cnn_input, input_dim1, input_dim2, input_dim3,
            layer_2_weights,
            layer_2_bias,
			convolution_output);
    

    // Layer 3 max pooling
    layer_3_max_pooling2d: max_pooling2d(convolution_output, layer_2_dim1, layer_2_dim2, layer_2_dim3,
    		max_pooling_output);


    // Layer 4 convolution
    layer_4_conv2d: conv2d(max_pooling_output, layer_3_dim1, layer_3_dim2, layer_3_dim3,
            layer_4_weights,
            layer_4_bias,
			convolution_output);


    // Layer 5 max pooling
    layer_5_max_pooling2d: max_pooling2d(convolution_output, layer_4_dim1, layer_4_dim2, layer_4_dim3,
    		max_pooling_output);


    // Layer 6 convolution
    layer_6_conv2d: conv2d(max_pooling_output, layer_5_dim1, layer_5_dim2, layer_5_dim3,
            layer_6_weights,
            layer_6_bias,
			convolution_output);


    // Layer 7 max pooling
    layer_7_max_pooling2d: max_pooling2d(convolution_output, layer_6_dim1, layer_6_dim2, layer_6_dim3,
    		max_pooling_output);


    // Layer 8 flatten
    layer_8_flatten: array_3d_to_1d(max_pooling_output, dense_output_a,
    		layer_7_dim1, layer_7_dim2, layer_7_dim3);


    // Layer 9 dense
    layer_9_dense_relu: dense_relu(dense_output_a,
            layer_9_weights,
            layer_9_bias,
			dense_output_b);

    // Layer 10 dense
    layer_10_dense_relu: dense_relu(dense_output_b,
            layer_10_weights,
            layer_10_bias,
			dense_output_a);


    // Layer 11 dense
    layer_11_dense_relu: dense_relu(dense_output_a,
            layer_11_weights,
            layer_11_bias,
			dense_output_b);

	
    // Layer 12 dense
    layer_12_dense: dense(dense_output_b,
            layer_12_weights,
            layer_12_bias,
			cnn_output);


    // Softmax the output
    softmax_output: softmax(cnn_output);


    //Send result
    long_uint_package output_package;
    float_uint probability;
    send_result: for (int i = 0; i < output_dim1; i++)
    {
    	probability.float_val = cnn_output[i];
    	output_package.data = probability.uint_val;
    	if (i == output_dim1-1)
    		output_package.last = 1;
    	infer_output << output_package;
    }

}
