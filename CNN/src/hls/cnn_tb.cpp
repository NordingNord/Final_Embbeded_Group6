#include <stdio.h>
#include <string>
#include "hls_stream.h"
#include "types.hpp"

#ifndef LAYER_INFO
#define LAYER_INFO
#include "layerInfo.hpp"
#endif

#include "testImage.hpp"

void infer(hls::stream<int> &infer_input, hls::stream<float> &infer_output);

uint image_num = 0;

int test_using_image(int image_array[input_dim_1][input_dim_2][input_dim_3],
		float prediction_array[output_dim_1])
{
	printf("\nImage: %d\n", image_num++);
	hls::stream<int> stream_in;
	hls::stream<float> stream_out;

	for (int i = 0; i < input_dim_1; i++)
	{
		for (int ii = 0; ii < input_dim_2; ii++)
		{
			for (int iii = 0; iii < input_dim_3; iii++)
			{
				stream_in << image_array[i][ii][iii];
			}
		}
	}

	infer(stream_in, stream_out);

	float results[output_dim_1];

	// Check results
	bool result_same = true;
	bool type_same = true;
	int result_type = 0;
	int prediction_type = 0;
	for (int i = 0; i < output_dim_1; i++)
	{
		stream_out >> results[i];
		printf("%f	| should be: %f 	| diff:	%f\n", results[i], prediction_array[i], results[i]-prediction_array[i]);
		if ((int)(prediction_array[i]*10000) != (int)(results[i]*10000))
		{
			result_same = false;
		}
		if (results[i] > results[result_type])
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
