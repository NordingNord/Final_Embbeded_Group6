#include <stdio.h>
#include <string>
#include "hls_stream.h"
#include "layerInfo.hpp"
#include "testImage.hpp"


void infer(hls::stream<int> &infer_input, hls::stream<float> &infer_output);

int main()
{
	hls::stream<int> image_input;
	hls::stream<float> result_output;

	for (int i = 0; i < model_input_dims[0]*model_input_dims[1]*model_input_dims[2]; i++)
	{
		image_input << test_image[i];
	}

    infer(image_input, result_output);

    float results[layer_12_output_dims[0]];

    bool same = true;
    for (int i = 0; i < layer_12_output_dims[0]; i++)
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
