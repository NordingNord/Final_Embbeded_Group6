#ifndef CNN_HPP
#define CNN_HPP

#include "hls_stream.h"
#include "ap_fixed.h"

typedef ap_fixed<32,24> fixed;
typedef std::size_t sizetype;

#ifndef LAYER_INFO
#define LAYER_INFO
#include "layerInfo.hpp"
#endif




template <sizetype size>
void float_to_fixed(float (&float_array)[size], fixed (&fixed_array)[size]);

template <sizetype size>
void fixed_to_float(fixed (&fixed_array)[size], float (&float_array)[size]);

template <sizetype size_1, sizetype size_2, sizetype size_3>
void rescale_3d(fixed (&array)[size_1][size_2][size_3]);

void relu(fixed &input);

template <sizetype input_size_1, sizetype input_size_2, sizetype input_size_3,
			sizetype weights_size_1, sizetype weights_size_2, sizetype weights_size_3, sizetype weights_size_4,
			sizetype bias_size,
			sizetype output_size_1, sizetype output_size_2, sizetype output_size_3>
void conv2d(fixed (&input)[input_size_1][input_size_2][input_size_3],
            const fixed (&weights)[weights_size_1][weights_size_2][weights_size_3][weights_size_4],
			const fixed (&bias)[bias_size],
            fixed (&output)[output_size_1][output_size_2][output_size_3]);

template <sizetype input_size_1, sizetype input_size_2, sizetype input_size_3,
            sizetype output_size_1, sizetype output_size_2, sizetype output_size_3>
void max_pooling2d(fixed (&input)[input_size_1][input_size_2][input_size_3],
                fixed (&output)[output_size_1][output_size_2][output_size_3]);

template <sizetype input_size_1, sizetype input_size_2, sizetype input_size_3,
            sizetype weights_size_1, sizetype weights_size_2,
            sizetype bias_size,
            sizetype output_size>
void dense_relu(fixed (&input)[input_size_1][input_size_2][input_size_3], 
            const fixed (&weights)[weights_size_1][weights_size_2],
            const fixed (&bias)[bias_size],
            fixed (&output)[output_size]);

template <sizetype input_size_1, sizetype input_size_2, sizetype input_size_3,
            sizetype weights_size_1, sizetype weights_size_2,
            sizetype bias_size,
            sizetype output_size>
void dense(fixed (&input)[input_size_1][input_size_2][input_size_3], 
            const fixed (&weights)[weights_size_1][weights_size_2],
            const fixed (&bias)[bias_size],
            fixed (&output)[output_size]);

void infer(hls::stream<int> &infer_input, hls::stream<float> &infer_output);


#endif
