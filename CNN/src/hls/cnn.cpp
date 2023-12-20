#include <stdio.h>
#include <string>
#include "weights.hpp"

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
    for (int i = row_margin; i < input_dims[0] - row_rest; i++)
    {
        for (int ii = col_margin; ii < input_dims[1] - col_rest; ii++)
        {
            // printf("%i, %i, %i\n", channel_margin, weight_dims[2], channel_rest);
            for (int iii = channel_margin; iii < input_dims[2] - channel_rest; iii++)
            {
                // printf("Runs\n");
                for (int iv = -row_margin; iv < row_margin + row_rest; iv++)
                {
                    for (int v = -col_margin; v < col_margin + col_rest; v++)
                    {
                        for (int vi = 0; vi < weight_dims[3]; vi++)
                        {
                            turns++;
                            printf("output[%d][%d][%d] = ", i-row_margin, ii-col_margin, vi);
                            printf("input[%d][%d][%d] * ", i+iv, ii+v, iii);
                            printf("kernel[%d][%d][0][%d]", iv + row_margin, v + col_margin, vi);
                            printf(" = %f\n", input[(i+iv)*input_dims[1]*input_dims[2] + (ii+v)*input_dims[2] + iii]);
                            output[(i-row_margin)*output_dims[1]*output_dims[2] + (ii-col_margin)*output_dims[2] + iii] += input[(i+iv)*input_dims[1]*input_dims[2] + (ii+v)*input_dims[2] + iii] * weights[(iv+row_margin)*weight_dims[1]*weight_dims[2]*weight_dims[3] + (v+col_margin)*weight_dims[2]*weight_dims[3] + vi];
                        }
                    }
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

int main()
{
    constexpr int input_dims[3] = {4,5,1};
    float model_input[input_dims[0]*input_dims[1]*input_dims[2]] = {5,2,1,1,5,
                                                                    5,2,1,1,5,
                                                                    5,2,1,1,5,
                                                                    5,2,1,1,5,};

    constexpr int test_kernel_dims[4] = {3,3,1,1};
    float test_kernel[test_kernel_dims[0]*test_kernel_dims[1]*test_kernel_dims[2]*test_kernel_dims[3]] = {0,1,0,
                            0,1,0,
                            1,1,1};


    constexpr int output_dims[3] = {2,3,1};
    float output[output_dims[0]*output_dims[1]*output_dims[2]] = {0,0,0, 
                                                                0,0,0};
    
    conv2d(input_dims, model_input, 
            test_kernel_dims, test_kernel, 
            conv2d_bias_dims, conv2d_bias, 
            output_dims, output);
}