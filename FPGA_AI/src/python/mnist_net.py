import numpy as np
import cv2
import matplotlib.pyplot as plt
import os
import time
import tensorflow as tf
import struct
from tensorflow import keras
from keras.models import Sequential
from keras.layers import Flatten
from keras.layers import Dense
from keras.layers import Activation
from sklearn.utils import shuffle
import sys

def main():
	open_time = time.time()
	args = sys.argv[1:]
	if len(args) == 2 and args[0] == '-dataset_dir':
		dataset_dir = str(args[1])	
	else:
		dataset_dir = os.getcwd() + '/MNIST_Dataset_JPG'
	print("dataset_dir: ", dataset_dir)


	## Use CPU only
	os.environ['CUDA_VISIBLE_DEVICES'] = '0'

	## Load MNIST dataset
	print("Loading dataset")
	load_start = time.time()
	train_read_folder = dataset_dir + '/MNIST_JPG_training/'
	test_read_folder = dataset_dir + '/MNIST_JPG_testing/'
	num_train_files = sum([len(files) for r, d, files in os.walk(train_read_folder)])
	num_test_files = sum([len(files) for r, d, files in os.walk(test_read_folder)])

	dims = (100,100) # dimensions of images to train/test with
	train_images = np.zeros((num_train_files, dims[1], dims[0]), dtype=np.float32)
	train_labels = np.zeros(num_train_files, dtype=np.uint8)
	test_images = np.zeros((num_test_files, dims[1], dims[0]), dtype=np.float32)
	test_labels = np.zeros(num_test_files, dtype=np.uint8)

	for j in range(2): # train and test	
		index = 0
		for i in range(10): # 0 to 9
			if j == 0:
				read_folder = train_read_folder + str(i) + '/'
				print("Trainining data for", i)
			if j == 1:
				read_folder = test_read_folder + str(i) + '/'
				print("Testing data for", i)
			for filename in os.listdir(read_folder):
				img = cv2.imread(os.path.join(read_folder,filename),0) # read img as grayscale
				img = cv2.resize(img, dims, interpolation = cv2.INTER_AREA)	# resize img to fit dims
				# print(len(img.flatten()))
				if img is not None:
					# img_arr = np.asarray(img.flatten() / 255).astype('float32').flatten()
					# print("index:", index, "img.flatten():", img.flatten(), "len(img.flatten())", len(img.flatten()))
					if j == 0:
						train_images[index] = img / 255
						train_labels[index] = i
					if j == 1:
						test_images[index] = img / 255
						test_labels[index] = i
					index += 1
					# print("len(train_images)", len(train_images), "len(train_labels)", len(train_labels))
	load_end = time.time()
	print("Load took: ", round(load_end - load_start), "s")
		
	## Convert to numpy arrays, flatten images - change dimensions from Nx10x10 to Nx100
	print("Preparing data")
	prepare_data_start = time.time()
	# train_images = np.asarray(train_images).astype('float32')
	# train_labels = np.asarray(train_labels).astype('uint8')
	# test_images = np.asarray(test_images).astype('float32')
	# test_labels = np.asarray(test_labels).astype('uint8')
	print("Size of arrays:")
	print("train_images: ", train_images.shape)
	print("train_labels: ", train_labels.shape)
	print("test_images: ", test_images.shape)
	print("test_labels: ", test_labels.shape)

	## Shuffle dataset
	train_images, train_labels = shuffle(train_images, train_labels)
	test_images, test_labels = shuffle(test_images, test_labels)

	prepare_data_end = time.time()
	print("Preparing data took: ", round(prepare_data_end - prepare_data_start), "s")


	## Define network structure
	print("Defining neural network")
	define_network_start = time.time()
	model = Sequential([
		Flatten(input_shape=(dims[1],dims[0])),		# reshape 10x10 to 100, layer 0
		Dense(32, activation='relu', use_bias=False),	# dense layer 1
		Dense(16, activation='relu', use_bias=False),	# dense layer 2
		Dense(10, activation='softmax', use_bias=False),	# dense layer 3
	])

	model.compile(optimizer='adam',
				  loss='sparse_categorical_crossentropy',
				  metrics=['accuracy'])
	
	define_network_end = time.time()
	print("Defining neural network took: ", round(define_network_end - define_network_start), "s")

	## Train network  
	print("Training neural network")
	train_start = time.time()
	model.fit(train_images, train_labels, epochs=1, batch_size=2000, validation_split = 0.1)

	model.summary()
	train_end = time.time()
	print("Training neural network took: ", round(train_end - train_start), "s")

	start_t = time.time()
	results = model.evaluate(test_images, test_labels, verbose=0)
	totalt_t = time.time() - start_t
	print("Inference time for ", len(test_images), " test image: " , totalt_t, " seconds")


	print("test loss, test acc: ", results)

	#print(model.layers[1].weights[0].numpy().shape)
	#print(model.layers[2].weights[0].numpy().shape)
	#print(model.layers[3].weights[0].numpy().shape)
	
	## Export test images
	images_to_export = 1
	# Pixel values in csv file
	img_filename = "src\hls\img_pixel_vals.csv" 
	open(img_filename, 'w').close() # clear file
	file = open(img_filename,"a") 
	imgStr = ""
	for i in range(dims[1]):
		for j in range(dims[0]):
			file.write(str(test_images[0][i][j]))
			file.write('\n')
	file.close()
	# Correct inference in h file
	img_filename = "src\hls\img_identities.h" 
	open(img_filename, 'w').close() # clear file
	file = open(img_filename,"a") 
	file.write("int img_characters[" + str(images_to_export) + "] = {")
	for i in range(images_to_export):
		imgStr = str(test_labels[i])
		file.write(imgStr)
		if i != images_to_export-1:
			file.write(', ')
	file.write("};")
	file.close()


	"""img_filename = "img_pixel_vals_vhdl_array.txt" 
	open(img_filename, 'w').close() # clear file
	file = open(img_filename,"a") 
	file.write('(')
	for i in range(dims[1]):
		for j in range(dims[0]):
			file.write('"')
			wstr = ''.join('{:0>8b}'.format(c) for c in struct.pack('!f', test_images[0][i][j]))
			file.write(wstr)
			file.write('"')
			if j != dims[1]-1:
				file.write(', ')
		if i != dims[0]-1:
			file.write(', \n')
	file.write(')')
	file.close()"""


	"""img_filename = "img_pixel_vals.coe" 
	open(img_filename, 'w').close() # clear file
	file = open(img_filename,"a") 
	file.write('memory_initialization_radix=2;\n') # radix 2 = binary, radix 10 = decimal
	file.write('memory_initialization_vector=\n')
	for i in range(dims[1]):
		for j in range(dims[0]):
			wstr = ''.join('{:0>8b}'.format(c) for c in struct.pack('!f', test_images[0][i][j]))
			file.write(wstr)
			if i == dims[0]-1 and j == dims[1]-1:
				file.write(';')
			else:
				file.write(',\n')
	file.close()"""

	print("test_image[0] label: ", test_labels[0])

	x = test_images[0]
	x = np.expand_dims(x, axis=0)
	print("Dimension of input: ", len(x), "x", len(x[0]), "x", len(x[0][0]))
	print("NN Prediction: ", np.argmax(model.predict(x)))
	if(test_labels[0] == np.argmax(model.predict(x))): 
		print("success")
	else: 
		print("failure")

	print("test_image[1] label: ", test_labels[1])

	x = test_images[1]
	x = np.expand_dims(x, axis=0)
	print("Dimension of input: ", len(x), "x", len(x[0]), "x", len(x[0][0]))
	print("NN Prediction: ", np.argmax(model.predict(x)))
	if(test_labels[1] == np.argmax(model.predict(x))): 
		print("success")
	else: 
		print("failure")

	print("Finished")
	# keras.utils.plot_model(model, "my_first_model.png", show_shapes=True, show_dtype=True, show_layer_activations=True)

	## Define network information
	info_start = time.time()
	weight_filename = "src\hls\layer_info.hpp" 
	open(weight_filename, 'w').close() # clear file
	file = open(weight_filename,"a") 

	## Define layers sizes
	for w in range(len(model.layers)):
		##define n_inputs 300*300
		##define n_layer1 32
		##define n_layer2 16
		##define n_layer3 10
		if w == 0:
			varName = "#define n_inputs " + str(len(model.layers[1].weights[0].numpy()))
			print("layer: ", w, " size: ", len(model.layers[1].weights[0].numpy()))
		else:
			varName = "#define n_layer" + str(w) + " " + str(len(model.layers[w].weights[0].numpy()[0]))
			print("layer: ", w, " size: ", str(len(model.layers[w].weights[0].numpy()[0])))
		file.write(varName)
		file.write('\n\n')

	## Define network weights after training. Skip layer 0 (input layer)
	for w in range(1, len(model.layers)):
		if w == 1:
			varName = "#define layer1 const ap_fixed<32,24> layer1_weights[n_inputs][n_layer1]"
		else:
			varName = "#define layer" + str(w) + " const ap_fixed<32,24> layer" + str(w) + "_weights[n_layer" + str(w-1) + "][n_layer" + str(w) + "]"
		file.write(varName + " = ")
		file.write('{')
		weights = model.layers[w].weights[0].numpy()
		for i in range(weights.shape[0]):
			file.write('{')
			for j in range(weights.shape[1]):
				file.write(str(weights[i][j]))
				if j != weights.shape[1]-1:
					file.write(', ')
			file.write('}')
			if i != weights.shape[0]-1:
				file.write(', ')
		file.write('};\n\n')
	
	file.close()


	info_end = time.time()
	print("Total time: ", round(time.time() - open_time), "s")
	print("Load took: ", round(load_end - load_start), "s")
	print("Preparing data took: ", round(prepare_data_end - prepare_data_start), "s")
	print("Defining neural network took: ", round(define_network_end - define_network_start), "s")
	print("Training neural network took: ", round(train_end - train_start), "s")
	print("Exporting info took: ", round(info_end - info_start), "s")
	
	
	
if __name__=="__main__":
    main()
