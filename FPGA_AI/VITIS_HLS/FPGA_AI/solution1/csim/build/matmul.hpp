#ifndef MATMUL_HEADER
#define MATMUL_HEADER
#include "ap_int.h"
#include <cstdint>
#include "ap_fixed.h"
#include "layer_info.hpp"

void float_to_fixed(float input[n_inputs], ap_fixed<32,24> output[n_inputs]);

void hwmm_layer1(ap_fixed<32,24> input[n_inputs], const ap_fixed<32,24> weights[n_inputs][n_layer1], ap_fixed<32,24> output[1][n_layer1]);
void hw_act_layer1(ap_fixed<32,24> input[1][n_layer1], ap_fixed<32,24> output[1][n_layer1]);
void hwmm_layer2(ap_fixed<32,24> input[1][n_layer1], const ap_fixed<32,24> weights[n_layer1][n_layer2], ap_fixed<32,24> output[1][n_layer2]);
void hw_act_layer2(ap_fixed<32,24> input[1][n_layer2], ap_fixed<32,24> output[1][n_layer2]);
void hwmm_layer3(ap_fixed<32,24> input[1][n_layer2], const ap_fixed<32,24> weights[n_layer2][n_layer3], ap_fixed<32,24> output[1][n_layer3]);
void hw_act_layer3(ap_fixed<32,24> input[1][n_layer3], ap_fixed<32,24> &pred);
int nn_inference(float input_img[n_inputs]);

namespace weights{

	layer1;
	layer2;
	layer3;

}

#endif // MATMUL_HEADER
