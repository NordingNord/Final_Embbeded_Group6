#include <stdio.h>
#include <string>
#include "layerInfo.hpp"
#include "testImage.hpp"

enum DEBUG {NONE, LIGHT, ALL};

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

/*
*   This assumes kernel is 3x3, stride is (1,1), and padding is valid
*/
void conv2d(const int input_dims[3], float* input, 
            const int weight_dims[4], const float* weights,
            const int bias_dims[1], const float* bias,
            const int output_dims[3], float* output,
            const DEBUG debug)
{
    // Input
    if (debug == ALL)
        {
        
        printf("input (%d,%d,%d):\n", input_dims[0], input_dims[1], input_dims[2]);
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

        // Weigths
        printf("weights (%d,%d,%d,%d)\n", weight_dims[0], weight_dims[1], weight_dims[2], weight_dims[3]);
        printf("{\n");
        for (int iv = 0; iv < weight_dims[3]; iv++)
        {
            printf("    {\n");
            for (int i = 0; i < weight_dims[0]; i++)
            {
                printf("        {");
                for (int ii = 0; ii < weight_dims[1]; ii++)
                {
                    // printf("{");
                    for (int iii = 0; iii < weight_dims[2]; iii++)
                    {
                        printf("%f", weights[i*weight_dims[1]*weight_dims[2]*weight_dims[3] + ii*weight_dims[2]*weight_dims[3] + iii*weight_dims[3] + iv]);

                        if (iii < weight_dims[2]-1)
                        {
                            printf(", ");
                        }
                    }
                    if (ii < weight_dims[1]-1)
                    {
                        printf(", ");
                    }
                }
                printf("}");
                if (i < weight_dims[0]-1)
                {
                    printf(", ");
                }
                printf("\n");
            }
            printf("    }");
            if (iv < weight_dims[3]-1)
            {
                printf(", ");
            }
            printf("\n");
        }
        printf("}\n");

        // Biases
        printf("biases (%d):\n", bias_dims[0]);
        printf("{");
        for (int i = 0; i < bias_dims[0]; i++)
        {
            printf("%f", bias[i]);
            if (i < bias_dims[0]-1)
            {
                printf(", ");
            }
        }
        printf("}\n");
    }
    
    // Convolution
    int expected_turns = output_dims[0]*output_dims[1]*output_dims[2]*weight_dims[0]*weight_dims[1]*weight_dims[2];
    int turns = 0;
    int rows = 0;
    int cols = 0;
    int kernel_nums = 0;

    // Input rows
    for (int i = 1; i < input_dims[0] - 1; i++)
    {
        rows++;
        cols = 0;
        // Input columns
        for (int ii = 1; ii < input_dims[1] - 1; ii++)
        {
            cols++;
            kernel_nums = 0;
            // Kernel number
            for (int iii = 0; iii < weight_dims[3]; iii++)
            {
                kernel_nums++;
                // Input and kernel channels
                for (int iv = 0; iv < input_dims[2]; iv++)
                {
                    // Kernel rows
                    for (int v = -1; v < 2; v++)
                    {
                        // Kernel cols
                        for (int vi = -1; vi < 2; vi++)
                        {
                            turns++;
                            // printf("input[%d][%d][%d], output[%d][%d][%d]\n", i+v, ii+vi, iv, i-1, ii-1, iii);
                            output[(i - 1)*output_dims[1]*output_dims[2] + (ii - 1)*output_dims[2] + iii] += 
                                input[(i + v)*input_dims[1]*input_dims[2] + (ii + vi)*input_dims[2] + iv] *
                                weights[(v + 1)*weight_dims[1]*weight_dims[2]*weight_dims[3] + (vi + 1)*weight_dims[2]*weight_dims[3] + iv*weight_dims[3] + iii];
                        }
                        
                    }
                }
                output[(i - 1)*output_dims[1]*output_dims[2] + (ii - 1)*output_dims[2] + iii] += bias[iii];
            }
        }
    }
    
    // Output
    if (debug == ALL)
    {
        printf("output (%d,%d,%d):\n", output_dims[0], output_dims[1], output_dims[2]);
        printf("{\n");
        for (int iii = 0; iii < output_dims[2]; iii++)
        {
            printf("    {\n");
            for (int i = 0; i < output_dims[0]; i++)
            {
                printf("        {");
                for (int ii = 0; ii < output_dims[1]; ii++)
                {
                    printf("{");
                    // printf("%f, ", input[i][ii][iii]);
                    printf("%f", output[i*output_dims[1]*output_dims[2] + ii*output_dims[2] + iii]);
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
            printf("    }");
            if (iii < output_dims[2]-1)
            {
                printf(", ");
            }
            printf("\n");
        }
        printf("}\n");

    }
    if (debug > NONE)
    {
        // Results
        printf("given input dimension (%d, %d, %d)\n", input_dims[0], input_dims[1], input_dims[2]);
        printf("weights (%d,%d,%d,%d)\n", weight_dims[0], weight_dims[1], weight_dims[2], weight_dims[3]);
        printf("biases (%d):\n", bias_dims[0]);
        printf("{");
        for (int i = 0; i < bias_dims[0]; i++)
        {
            printf("%f", bias[i]);
            if (i < bias_dims[0]-1)
            {
                printf(", ");
            }
        }
        printf("}\n");
        printf("given output dimension (%d, %d, %d)\n", output_dims[0], output_dims[1], output_dims[2]);
        printf("result output dimension (%d, %d, %d)\n", rows, cols, kernel_nums);
        printf("calculations (result, expected given output): (%d, %d) --%s\n\n", turns, expected_turns, turns == expected_turns ? "Correct" : "Wrong");
    }
}

void pooling2d(const int input_dims[3], float* input, 
                const int output_dims[3], float* output)
{
    
}

int main()
{
    // Basic test
    constexpr int test_input_dims[3] = {4,5,1};
    float test_input[test_input_dims[0]*test_input_dims[1]*test_input_dims[2]] = {5,2,1,4,5,
                                                                    5,2,1,1,5,
                                                                    5,2,1,1,5,
                                                                    6,3,2,2,0,};

    constexpr int test_kernel_dims[4] = {3,3,1,2};
    float test_kernel[test_kernel_dims[0]*test_kernel_dims[1]*test_kernel_dims[2]*test_kernel_dims[3]] = {0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0};

    constexpr int test_kernel_bias_dims[1] = {test_kernel_dims[3]};
    float test_kernel_bias[test_kernel_bias_dims[0]] = {10, 0.5};


    constexpr int output_dims[3] = {2,3,2};
    float output[output_dims[0]*output_dims[1]*output_dims[2]];
    set3DFloatArray(output_dims, output, 0);
    
    conv2d(test_input_dims, test_input, 
            test_kernel_dims, test_kernel, 
            test_kernel_bias_dims, test_kernel_bias, 
            output_dims, output,
            DEBUG::ALL);
    
    // Test using image
    float image_input[model_input_dims[0]*model_input_dims[1]*model_input_dims[2]];

    rescale(model_input_dims, square, image_input);

    float conv2d_output[conv2d_output_dims[0]*conv2d_output_dims[1]*conv2d_output_dims[2]];

    set3DFloatArray(conv2d_output_dims, conv2d_output, 0);

    conv2d(model_input_dims, image_input, 
            conv2d_weights_dims, conv2d_weights, 
            conv2d_bias_dims, conv2d_bias, 
            conv2d_output_dims, conv2d_output,
            DEBUG::LIGHT);



}