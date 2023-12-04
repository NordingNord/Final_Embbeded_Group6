#include <stdio.h>
#include <iostream>
#include "matmul.hpp"
#include "img_pixel_vals.hpp"


int main() {

	std::cout << "Testing nn with size: ";
	std::cout << n_inputs << " x " << n_layer1 << " x " << n_layer2 << " x " << n_layer3 << std::endl;

	int pred = nn_inference(img_pixels);
	int act = img_characters[0];
	std::cout << std::endl;
	std::cout << 0 << ": NN Prediction: " << pred << " Should be: " << act;
	if (pred != act) {
		std::cout << " --Failed";
	}
	std::cout << std::endl;
	std::cout << std::endl;

	return 0;
}
