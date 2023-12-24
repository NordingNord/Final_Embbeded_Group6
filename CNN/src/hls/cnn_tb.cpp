#include <stdio.h>
#include <string>
#include "hls_stream.h"
#include "testImage.hpp"
#include "cnn.cpp"


void infer(hls::stream<int> &infer_input, hls::stream<float> &infer_output);

int main()
{
	hls::stream<int> image_input;
	hls::stream<float> result_output;

	for (int i = 0; i < input_dim_1; i++)
	{
		for (int ii = 0; ii < input_dim_2; ii++)
		{
			for (int iii = 0; iii < input_dim_3; iii++)
			{
				image_input << test_image[i][ii][iii];
			}
		}
	}

    infer(image_input, result_output);

    float results[output_dim_1];

    bool same = true;
    for (int i = 0; i < output_dim_1; i++)
	{
		result_output >> results[i];
		printf("%f\n", results[i]);
		if ((int)(simple_prediction[i]*10000) != (int)(results[i]*10000))
		{
			same = false;
		}
	}
   if (same)
	   printf("Correct!\n");
   else
   {
	   printf("Wrong, check layers are written correctly\n");
	   return 1;
   }


    return 0;
}
