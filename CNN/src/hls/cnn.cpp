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

void set1DFloatArray(const int* array_length, float* array, float value)
{
    for (int i = 0; i < array_length[0]; i++)
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
                output[i*input_dims[1]*input_dims[2] + ii*input_dims[2] + iii] = 
                    input[i*input_dims[1]*input_dims[2] + ii*input_dims[2] + iii] / 255.0;
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
            const int bias_dims[1], const float* bias,
            const int output_dims[3], float* output,
            const DEBUG debug)
{
    // Input
    if (debug > NONE)
    {
        printf("-------------------\n");
        printf("-------conv2d------\n");
        printf("input (%d,%d,%d):\n", input_dims[0], input_dims[1], input_dims[2]);
    }
    if (debug == ALL)
        {
        
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
    }
    if (debug > NONE)
    {
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
                            // if (turns > 8)
                            // {
                            //     return;
                            // }
                            

                            // printf("input[%d][%d][%d]= %f, weights[%d][%d][%d][%d]= %f\n", i+v, ii+vi, iv, 
                            //         input[(i + v)*input_dims[1]*input_dims[2] + 
                            //         (ii + vi)*input_dims[2] + 
                            //         iv], 
                            //         v+1, vi+1, iv, iii,
                            //         weights[(v + 1)*weight_dims[1]*weight_dims[2]*weight_dims[3] + 
                            //         (vi + 1)*weight_dims[2]*weight_dims[3] + 
                            //         iv*weight_dims[3] + 
                            //         iii]);
                            output[(i - 1)*output_dims[1]*output_dims[2] + 
                                    (ii - 1)*output_dims[2] + 
                                    iii] += 
                                    
                                    input[(i + v)*input_dims[1]*input_dims[2] + 
                                    (ii + vi)*input_dims[2] + 
                                    iv] *
                                    
                                    weights[(v + 1)*weight_dims[1]*weight_dims[2]*weight_dims[3] + 
                                    (vi + 1)*weight_dims[2]*weight_dims[3] + 
                                    iv*weight_dims[3] + 
                                    iii];
                            
                            turns++;
                        }
                        
                    }
                }
                // Add bias
                output[(i - 1)*output_dims[1]*output_dims[2] + (ii - 1)*output_dims[2] + iii] += bias[iii];
                // Apply relu activiation function
                relu(output[(i - 1)*output_dims[1]*output_dims[2] + (ii - 1)*output_dims[2] + iii]);
                // printf("%f\n", output[(i - 1)*output_dims[1]*output_dims[2] + (ii - 1)*output_dims[2] + iii]);
            }
        }
    }
    
    // Output
    if (debug > NONE)
    {
        printf("output (%d,%d,%d):\n", output_dims[0], output_dims[1], output_dims[2]);
    }
    if (debug == ALL)
    {
        printf("{\n");
        for (int iii = 0; iii < output_dims[2]; iii++)
        {
            printf("    {\n");
            for (int i = 0; i < output_dims[0]; i++)
            {
                printf("        {");
                for (int ii = 0; ii < output_dims[1]; ii++)
                {
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

/*
*   This assumes filter is 2x2, stride is arbitrary, and padding is valid
*/
void max_pooling2d(const int input_dims[3], float* input, 
                const int stride[2],
                const int output_dims[3], float* output,
                DEBUG debug)
{
    // Show input
    if (debug > NONE)
    {
        printf("-------------------\n");
        printf("---max_pooling2d---\n");
        printf("input (%d,%d,%d):\n", input_dims[0], input_dims[1], input_dims[2]);
    }
    
    if (debug == ALL)
    {
        printf("{\n");
        for (int iii = 0; iii < input_dims[2]; iii++)
        {
            printf("    {\n");
            for (int i = 0; i < input_dims[0]; i++)
            {
                printf("        {");
                for (int ii = 0; ii < input_dims[1]; ii++)
                {
                    // printf("%f, ", input[i][ii][iii]);
                    printf("%f", input[i*input_dims[1]*input_dims[2] + ii*input_dims[2] + iii]);
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
            printf("    }");
            if (iii < input_dims[2]-1)
            {
                printf(", ");
            }
            printf("\n");
        }
        printf("}\n");

        // Stride
        printf("stride: (%d,%d)\n", stride[0], stride[1]);
    }

    // Input rows
    int expected_turns = output_dims[0]*output_dims[1]*output_dims[2];
    int turns = 0;
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
                        // if (turns > 1)
                        // {
                        //     return;
                        // }
                        

                        // printf("input[%d][%d][%d]= %f\n", i+iv, ii+v, iii, 
                            // input[(i + iv)*input_dims[1]*input_dims[2] + (ii + v)*input_dims[2] + iii]
                            // );
                        
                        if (input[(i + iv)*input_dims[1]*input_dims[2] + (ii + v)*input_dims[2] + iii] > maxVal)
                        {
                            maxVal = input[(i + iv)*input_dims[1]*input_dims[2] + (ii + v)*input_dims[2] + iii];
                        }
                    }
                }
                output[(i/stride[0])*output_dims[1]*output_dims[2] + (ii/stride[1])*output_dims[2] + iii] = maxVal;
                printf("output[%d][%d][%d]= %f\n", i/stride[0], ii/stride[1], iii,
                    output[(i/stride[0])*output_dims[1]*output_dims[2] + (ii/stride[1])*output_dims[2] + iii]
                    );
                turns++;
            }
        }
    }

    // Show output
    if (debug > NONE)
    {
        printf("output (%d,%d,%d):\n", output_dims[0], output_dims[1], output_dims[2]);
    }
    
    if (debug == ALL)
    {
        printf("{\n");
        for (int iii = 0; iii < output_dims[2]; iii++)
        {
            printf("    {\n");
            for (int i = 0; i < output_dims[0]; i++)
            {
                printf("        {");
                for (int ii = 0; ii < output_dims[1]; ii++)
                {
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
        printf("}\n\n");

    }
    
    if (debug > NONE)
    {
        printf("calculations (result, expected given output): (%d, %d) --%s\n\n", turns, expected_turns, turns == expected_turns ? "Correct" : "Wrong");
    }
}


/*
*   This is matrix multiplication
*/
void dense(const int input_dims[1], float* input, 
            const int weight_dims[2], const float* weights,
            const int bias_dims[1], const float* bias,
            const int output_dims[1], float* output,
            bool use_relu, DEBUG debug)
{
    if (debug > NONE)
    {
        printf("-------------------\n");
        printf("-------dense-------\n");
        printf("input (%d)\n", input_dims[0]);
    }

    if (debug == ALL)
    {
        // Inputs
        printf("{");
        for (int i = 0; i < input_dims[0]; i++)
        {
            printf("%f", input[i]);
            if (i < input_dims[0]-1)
            {
                printf(", ");
            }
        }
        printf("}\n");

        
    }
    if (debug > NONE)
    {
        // Weigths
        printf("weights (%d,%d)\n", weight_dims[0], weight_dims[1]);
    }
    if (debug == ALL)
    {
        printf("{\n");
        for (int i = 0; i < weight_dims[1]; i++)
        {
            printf("    {");
            for (int ii = 0; ii < weight_dims[0]; ii++)
            {
                printf("%f", weights[ii*weight_dims[1] + i]);
                if (ii < weight_dims[0]-1)
                {
                    printf(", ");
                }
            }
            printf("}");
            if (i < weight_dims[1]-1)
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

    int expected_turns = weight_dims[0]*weight_dims[1];
    int turns = 0;
    for (int i = 0; i < weight_dims[1]; i++)
    {
        for (int ii = 0; ii < weight_dims[0]; ii++)
        {
            turns++;
            output[i] += input[ii] * weights[ii*weight_dims[1] + i];
        }
        // Add bias
        output[i] += bias[i];
        // Apply relu activation function
        if (use_relu)
        {
            relu(output[i]);
        }
    }
    

    if (debug > NONE)
    {
        printf("output (%d)\n", output_dims[0]);

    }

    if (debug == ALL)
    {
        printf("{");
        for (int i = 0; i < output_dims[0]; i++)
        {
            printf("%f", output[i]);
            if (i < output_dims[0]-1)
            {
                printf(", ");
            }
        }
        printf("}\n");
    }
    if (debug > NONE)
    {
        printf("calculations (result, expected given output): (%d, %d) --%s\n\n", turns, expected_turns, turns == expected_turns ? "Correct" : "Wrong");
    }
}

int main()
{
    // // Basic test
    // constexpr int test_input_dims[3] = {4,5,1};
    // float test_input[test_input_dims[0]*test_input_dims[1]*test_input_dims[2]] = {
    //     -5,2,1,4,5,
    //     -5,2,1,1,5,
    //     -5,2,1,1,5,
    //     6,3,2,2,0
    //     };

    // constexpr int test_kernel_dims[4] = {3,3,1,2};
    // float test_kernel[test_kernel_dims[0]*test_kernel_dims[1]*test_kernel_dims[2]*test_kernel_dims[3]] = {
    //     0,0, 0,0, 1,0, 
    //     0,0, 0,0, 1,0,
    //     0,1, 0,1, 1,1};

    // constexpr int test_kernel_bias_dims[1] = {test_kernel_dims[3]};
    // float test_kernel_bias[test_kernel_bias_dims[0]] = {10, 0.5};


    // constexpr int output_dims[3] = {2,3,2};
    // float output[output_dims[0]*output_dims[1]*output_dims[2]];
    // set3DFloatArray(output_dims, output, 0);
    
    // conv2d(test_input_dims, test_input, 
    //         test_kernel_dims, test_kernel, 
    //         test_kernel_bias_dims, test_kernel_bias, 
    //         output_dims, output,
    //         DEBUG::ALL);

    // float expected_output[output_dims[0]*output_dims[1]*output_dims[2]] = {
    //     13,0, 16,4.5, 25,7.5,
    //     14,11.5, 14,7.5, 20,4.5
    //     };
    
    // bool correct = true;
    // for (int i = 0; i < output_dims[0]*output_dims[1]*output_dims[2]; i++)
    // {
    //     if (output[i] != expected_output[i])
    //     {
    //         correct = false;
    //     }
    // }
    // printf("correct?: %d", correct);
    
    
    // constexpr int output_dims_1[3] = {1,2,2};
    // float output_1[output_dims_1[0]*output_dims_1[1]*output_dims_1[2]];
    // set3DFloatArray(output_dims_1, output_1, 0);
    // constexpr int stride_1[2] = {1,1};
    // max_pooling2d(output_dims, output, stride_1, output_dims_1, output_1, DEBUG::ALL);

    // constexpr int test_dense_input_dims[1] = {2};
    // float test_dense_input[test_dense_input_dims[0]] = {2, 4};
    // constexpr int test_dense_weights_dims[2] = {2,3};
    // float test_dense_weights[test_dense_weights_dims[0]*test_dense_weights_dims[1]] = {1,2,3,4,5,6};
    // constexpr int test_dense_bias_dims[1] = {3};
    // float test_dense_bias[test_dense_bias_dims[0]] = {5,10,1};
    // constexpr int test_dense_output_dims[1] = {3};
    // float test_dense_output[test_dense_output_dims[0]] = {0,0,0};

    // dense(test_dense_input_dims, test_dense_input, test_dense_weights_dims, test_dense_weights,
    //         test_dense_bias_dims, test_dense_bias, test_dense_output_dims, test_dense_output,
    //         DEBUG::ALL);


    ///////////////////////////////////////////////////////////////
    // Test using image
    // Get image
    float image_input[model_input_dims[0]*model_input_dims[1]*model_input_dims[2]];

    // Layer 1 rescaling
    rescale(model_input_dims, test_image, image_input);

    // Layer 2 convolution
    float layer_2_output[layer_2_output_dims[0]*layer_2_output_dims[1]*layer_2_output_dims[2]];

    set3DFloatArray(layer_2_output_dims, layer_2_output, 0);

    conv2d(model_input_dims, image_input, 
            layer_2_weights_dims, layer_2_weights, 
            layer_2_bias_dims, layer_2_bias, 
            layer_2_output_dims, layer_2_output,
            DEBUG::LIGHT);

    // for (int i = 0; i < 22*22*32; i++)
    // {
    //     if ((int)(simple_prediction[i]*100000) != (int)(layer_2_output[i]*100000))
    //     {
    //         printf("Failed at %d, %f != %f\n", i, simple_prediction[i], layer_2_output[i]);
    //         break;
    //     }
        
    // }
    

    // Layer 3 max pooling
    float layer_3_output[layer_3_output_dims[0]*layer_3_output_dims[1]*layer_3_output_dims[2]];
    set3DFloatArray(layer_3_output_dims, layer_3_output, 0);

    max_pooling2d(layer_2_output_dims, layer_2_output, layer_3_strides, 
                layer_3_output_dims, layer_3_output,
                DEBUG::LIGHT);
    
    // for (int i = 0; i < layer_3_output_dims[0]*layer_3_output_dims[1]*layer_3_output_dims[2]; i++)
    // {
    //     if ((int)(simple_prediction[i]*10000) != (int)(layer_3_output[i]*10000))
    //     {
    //         printf("Failed at %d, %f != %f\n", i, simple_prediction[i], layer_3_output[i]);
    //         break;
    //     }
        
    // }

    
    // Layer 4 convolution
    float layer_4_output[layer_4_output_dims[0]*layer_4_output_dims[1]*layer_4_output_dims[2]];

    set3DFloatArray(layer_4_output_dims, layer_4_output, 0);

    conv2d(layer_3_output_dims, layer_3_output,
            layer_4_weights_dims, layer_4_weights,
            layer_4_bias_dims, layer_4_bias,
            layer_4_output_dims, layer_4_output,
            DEBUG::LIGHT);

    // Layer 5 max pooling
    float layer_5_output[layer_5_output_dims[0]*layer_5_output_dims[1]*layer_5_output_dims[2]];
    set3DFloatArray(layer_5_output_dims, layer_5_output, 0);

    max_pooling2d(layer_4_output_dims, layer_4_output, layer_5_strides, 
                layer_5_output_dims, layer_5_output,
                DEBUG::LIGHT);

    // Layer 6 convolution
    float layer_6_output[layer_6_output_dims[0]*layer_6_output_dims[1]*layer_6_output_dims[2]];

    set3DFloatArray(layer_6_output_dims, layer_6_output, 0);

    conv2d(layer_5_output_dims, layer_5_output,
            layer_6_weights_dims, layer_6_weights,
            layer_6_bias_dims, layer_6_bias,
            layer_6_output_dims, layer_6_output,
            DEBUG::LIGHT);

    // Layer 7 max pooling
    float layer_7_output[layer_7_output_dims[0]*layer_7_output_dims[1]*layer_7_output_dims[2]];
    set3DFloatArray(layer_7_output_dims, layer_7_output, 0);

    max_pooling2d(layer_6_output_dims, layer_6_output, layer_7_strides, 
                layer_7_output_dims, layer_7_output,
                DEBUG::LIGHT);

    // for (int i = 0; i < layer_7_output_dims[0]*layer_7_output_dims[1]*layer_7_output_dims[2]; i++)
    // {
    //     if ((int)(simple_prediction[i]*10000) != (int)(layer_7_output[i]*10000))
    //     {
    //         printf("Failed at %d, %f != %f\n", i, simple_prediction[i], layer_7_output[i]);
    //         break;
    //     }
        
    // }

    // Layer 8 flatten
    // Arrays are already flattened!
    // So layer_7_output is just used

    // Layer 9 dense
    float layer_9_output[layer_9_output_dims[0]];
    set1DFloatArray(layer_9_output_dims, layer_9_output, 0);
    dense(layer_8_output_dims, layer_7_output,
            layer_9_weights_dims, layer_9_weights,
            layer_9_bias_dims, layer_9_bias,
            layer_9_output_dims, layer_9_output,
            true, DEBUG::LIGHT);

    // Layer 10 dense
    float layer_10_output[layer_10_output_dims[0]];
    set1DFloatArray(layer_10_output_dims, layer_10_output, 0);
    dense(layer_9_output_dims, layer_9_output,
            layer_10_weights_dims, layer_10_weights,
            layer_10_bias_dims, layer_10_bias,
            layer_10_output_dims, layer_10_output,
            true, DEBUG::LIGHT);


    // Layer 11 dense
    float layer_11_output[layer_11_output_dims[0]];
    set1DFloatArray(layer_11_output_dims, layer_11_output, 0);
    dense(layer_10_output_dims, layer_10_output,
            layer_11_weights_dims, layer_11_weights,
            layer_11_bias_dims, layer_11_bias,
            layer_11_output_dims, layer_11_output,
            true, DEBUG::LIGHT);

    // Layer 12 dense
    float layer_12_output[layer_12_output_dims[0]];
    set1DFloatArray(layer_12_output_dims, layer_12_output, 0);
    dense(layer_11_output_dims, layer_11_output,
            layer_12_weights_dims, layer_12_weights,
            layer_12_bias_dims, layer_12_bias,
            layer_12_output_dims, layer_12_output,
            false, DEBUG::LIGHT);

    for (int i = 0; i < layer_12_output_dims[0]*layer_12_output_dims[1]*layer_12_output_dims[2]; i++)
    {
        if ((int)(simple_prediction[i]*10000) != (int)(layer_12_output[i]*10000))
        {
            printf("Failed at %d, %f != %f\n", i, simple_prediction[i], layer_12_output[i]);
            break;
        }
    }


    printf("Result (%d)\n{", layer_12_output_dims[0]);
    for (int i = 0; i < layer_12_output_dims[0]; i++)
    {
        printf("%f", layer_12_output[i]);
        if (i < layer_12_output_dims[0]-1)
        {
            printf(", ");
        }
    }
    printf("}");
    

}