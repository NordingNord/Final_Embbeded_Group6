#include <stdio.h>
#include <string>
#include "weights.hpp"
#include "test_image.hpp"

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

void set1DFloatArray(const int array_length, float* array, float value)
{
    for (int i = 0; i < array_length; i++)
    {
        array[i] = value;
    }
    
}

void rescale(const int input_dims[3], int* input, float* output)
{
    for (int i = 0; i < input_dims[0]; i++)
    {
        for (int ii = 0; ii < input_dims[1]; ii++)
        {
            for (int iii = 0; iii < input_dims[2]; iii++)
            {
                output[i*input_dims[1]*input_dims[2] + ii*input_dims[2] + iii] = input[i*input_dims[1]*input_dims[2] + ii*input_dims[2] + iii] / 255.0;
            }
        }
    }    
}

void conv2d(const int input_dims[3], float* input, 
            const int weight_dims[4], const float* weights,
            const int bias_dims[1], const float* bias,
            const int output_dims[3], float* output)
{
	printf("%d,%d,%d\n", input_dims[0], input_dims[1], input_dims[2]);
    printf("{\n");
    for (int i = 0; i < input_dims[0]; i++)
    {
        printf("    {");
        for (int ii = 0; ii < input_dims[1]; ii++)
        {
            printf("{");
            for (int iii = 0; iii < input_dims[2]; iii++)
            {
                // printf("%f, ", input[i][ii][iii]);
                printf("%f", input[i*input_dims[1]*input_dims[2] + ii*input_dims[2] + iii]);
                if (iii < input_dims[2]-1)
                {
                    printf(", ");
                }
            }
            printf("}");
            if (ii < input_dims[1]-1)
            {
                printf(", ");
            }
        }
        printf("}");
        if (i < input_dims[0]-1)
        {
            printf(", ");
        }
        printf("\n");
    }
    printf("}\n");

    // Convolution
    const int row_margin = (int)(weight_dims[0]/2);
    const int row_rest = weight_dims[0] > 1 ? weight_dims[0]%2 : 0;
	const int col_margin = (int)(weight_dims[1]/2);
    const int col_rest = weight_dims[1] > 1 ? weight_dims[1]%2 : 0;
	const int channel_margin = (int)(weight_dims[2]/2);
    const int channel_rest = weight_dims[2] > 1 ? weight_dims[2]%2 : 0;
    const int expected_turns = output_dims[0]*output_dims[1]*weight_dims[0]*weight_dims[1]*weight_dims[3];
    int turns = 0;
    // Input rows
    for (int i = row_margin; i < input_dims[0] - row_rest; i++)
    {
        // Input columns
        for (int ii = col_margin; ii < input_dims[1] - col_rest; ii++)
        {
            // printf("%i, %i, %i\n", channel_margin, weight_dims[2], channel_rest);
            // Input depth
            for (int iii = channel_margin; iii < input_dims[2] - channel_rest; iii++)
            {
                // printf("Runs\n");
                // Kernel number
                for (int iv = 0; iv < weight_dims[3]; iv++)
                {
                    // Kernel row
                    for (int v = -row_margin; v < row_margin + row_rest; v++)
                    {
                        // Kernel column
                        for (int vi = -col_margin; vi < col_margin + col_rest; vi++)
                        {
                            turns++;
                            printf("output[%d][%d][%d] = ", i-row_margin, ii-col_margin, iv);
                            printf("input[%d][%d][%d] * ", i+v, ii+vi, iii);
                            printf("kernel[%d][%d][0][%d]", v + row_margin, vi + col_margin, iv);
                            printf(" = %f\n", input[(i+v)*input_dims[1]*input_dims[2] + (ii+vi)*input_dims[2]]);
                            output[(i-row_margin)*output_dims[1]*output_dims[2] + (ii-col_margin)*output_dims[2]] += input[(i+v)*input_dims[1]*input_dims[2] + (ii+vi)*input_dims[2]] * weights[(v+row_margin)*weight_dims[1]*weight_dims[2]*weight_dims[3] + (vi+col_margin)*weight_dims[2]*weight_dims[3] + iv];
                        }
                    }
                    output[(i-row_margin)*output_dims[1]*output_dims[2] + (ii-col_margin)*output_dims[2]] += bias[iv];
                }
            }
        }
    }
    printf("turns: %d ?= %d\n", turns, expected_turns);
    
    printf("%d,%d,%d\n", output_dims[0], output_dims[1], output_dims[2]);
    printf("{\n");
    for (int i = 0; i < output_dims[0]; i++)
    {
        printf("    {");
        for (int ii = 0; ii < output_dims[1]; ii++)
        {
            printf("{");
            for (int iii = 0; iii < output_dims[2]; iii++)
            {
                // printf("%f, ", input[i][ii][iii]);
                printf("%f", output[i*output_dims[1]*output_dims[2] + ii*output_dims[2] + iii]);
                if (iii < output_dims[2]-1)
                {
                    printf(", ");
                }
            }
            printf("}");
            if (ii < output_dims[1]-1)
            {
                printf(", ");
            }
        }
        printf("}");
        if (i < output_dims[0]-1)
        {
            printf(", ");
        }
        printf("\n");
    }
    printf("}\n");
}

void pooling2d(const int input_dims[3], float* input, 
                const int output_dims[3], float* output)
{
    
}

int main()
{
    constexpr int test_input_dims[3] = {4,5,1};
    float test_input[test_input_dims[0]*test_input_dims[1]*test_input_dims[2]] = {5,2,1,4,5,
                                                                    5,2,1,1,5,
                                                                    5,2,1,1,5,
                                                                    6,3,2,2,0,};

    constexpr int test_kernel_dims[4] = {3,3,1,1};
    float test_kernel[test_kernel_dims[0]*test_kernel_dims[1]*test_kernel_dims[2]*test_kernel_dims[3]] = {0,1,0,
                            0,1,0,
                            1,1,1};

    constexpr int test_kernel_bias_dims[1] = {test_kernel_dims[3]};
    float test_kernel_bias[test_kernel_bias_dims[0]] = {1};


    constexpr int output_dims[3] = {2,3,1};
    float output[output_dims[0]*output_dims[1]*output_dims[2]] = {0,0,0, 
                                                                0,0,0};
    
    conv2d(test_input_dims, test_input, 
            test_kernel_dims, test_kernel, 
            test_kernel_bias_dims, test_kernel_bias, 
            output_dims, output);
    
    float image_input[model_input_dims[0]*model_input_dims[1]*model_input_dims[2]];

    rescale(model_input_dims, penta, image_input);

    float conv2d_output[conv2d_output_dims[0]*conv2d_output_dims[1]*conv2d_output_dims[2]];

    set3DFloatArray(conv2d_output_dims, conv2d_output, 0);

    conv2d(model_input_dims, image_input, 
            conv2d_weights_dims, conv2d_weights, 
            conv2d_bias_dims, conv2d_bias, 
            conv2d_output_dims, conv2d_output);

    printf("Length of output: %d", conv2d_output_dims[0]*conv2d_output_dims[1]*conv2d_output_dims[2]);
}