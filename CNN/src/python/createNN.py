import os
import time
import sys
import numpy as np
import os
import PIL
import PIL.Image
import tensorflow as tf
import tensorflow_datasets as tfds
import pathlib
import matplotlib.pyplot as plt


def print_status(message : str):
    print("[Status]: ",message)

def print_info(message : str):
    print("[Info]: ",message)


def main():
    print_status("Defining dataset directory")
    args = sys.argv[1:]
    USE_DEFAULT_IMAGEPATH = True
    if USE_DEFAULT_IMAGEPATH:
        dataset_dir = "/home/frank/Documents/Git/Final_Embbeded_Group6/CNN/src/getimages/imgs"
    else:
        if len(args) == 2 and args[0] == '-image_path':
            dataset_dir = str(args[1])	
        else:
            dataset_dir = input("Write path to images:")
    print("dataset_dir set to: ", dataset_dir)
    data_dir = pathlib.Path(dataset_dir).with_suffix('')
    image_count = len(list(data_dir.glob('*/*.png')))
    print("num of images: ", image_count)
	
    print_status("Loading dataset images")

    image_types = ["cross", "flathead", "cross_blue", "flathead_blue"]
    image_files = {}
    image_dims = []
    for type in image_types:
        image_files[type] = list(data_dir.glob(type + '/*'))
    for type in image_types:
        image = PIL.Image.open(str(image_files[type][0]))
        if image_dims != []:
            assert [image.height, image.width] == image_dims, f"Image types does not have the same dimensions!\n {type} has {[image.height, image.width]}, others have {image_dims}"
        else:
            image_dims = [image.height, image.width] 
        # image.show()
    
    # input("Press the <ENTER> key to continue...")

    print_info(f"Images have dims: {image_dims}")
    print_status("Creating dataset from images")

    batch_size = 32
    train_ds = tf.keras.utils.image_dataset_from_directory(
    data_dir,
    validation_split=0.2,
    subset="training",
    seed=123,
    image_size=image_dims,
    batch_size=batch_size)
    
    val_ds = tf.keras.utils.image_dataset_from_directory(
    data_dir,
    validation_split=0.2,
    subset="validation",
    seed=123,
    image_size=image_dims,
    batch_size=batch_size)

    class_names = train_ds.class_names
    print_info(f"Class names found: {class_names}")

    print_status("Visualizing dataset")
    
    plt.figure(figsize=(10, 10))
    for images, labels in train_ds.take(1):
        # print(labels)
        used = []
        subplot_dims = int(np.sqrt(len(class_names)))
        for i, label in enumerate(labels[:-1]):
            # print(i, labels[i].numpy().astype("uint8"))
            if labels[i].numpy().astype("uint8") not in used:
                ax = plt.subplot(subplot_dims, subplot_dims, labels[i].numpy().astype("uint8") + 1)
                plt.imshow(images[i].numpy().astype("uint8"))
                plt.title(class_names[labels[i]])
                plt.axis("off")
                used.append(labels[i].numpy().astype("uint8"))
    plt.show()
    

    for image_batch, labels_batch in train_ds:
        print_info(f"One traning data batch has image shape {image_batch.shape}")
        print_info(f"One traning data batch has label shape {labels_batch.shape}")
        break

    print_status("Normalizing RGB values from [0, 255] to [0, 1]")
    normalization_layer = tf.keras.layers.Rescaling(1./255)
    normalized_ds = train_ds.map(lambda x, y: (normalization_layer(x), y))
    image_batch, labels_batch = next(iter(normalized_ds))
    first_image = image_batch[0]
    print_info(f"Example result: {np.min(first_image), np.max(first_image)}")

    print_status("Enabling caching and prefetching of dataset for traning and validation")

    AUTOTUNE = tf.data.AUTOTUNE

    train_ds = train_ds.cache().prefetch(buffer_size=AUTOTUNE)
    val_ds = val_ds.cache().prefetch(buffer_size=AUTOTUNE)


    
    print_status("Defining model")

    num_classes = len(class_names)

    model = tf.keras.Sequential([
    tf.keras.layers.Rescaling(1./255),
    tf.keras.layers.Conv2D(32, 3, activation='relu'),
    tf.keras.layers.MaxPooling2D(),
    tf.keras.layers.Conv2D(32, 3, activation='relu'),
    tf.keras.layers.MaxPooling2D(),
    tf.keras.layers.Conv2D(32, 3, activation='relu'),
    tf.keras.layers.MaxPooling2D(),
    tf.keras.layers.Flatten(),
    tf.keras.layers.Dense(128, activation='relu'),
    tf.keras.layers.Dense(num_classes)
    ])

    print_status("Configuring model")
    
    model.compile(
        optimizer='adam',
        loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
        metrics=['accuracy'])

    print_status("Fitting model")
    
    model.fit(
        train_ds,
        validation_data=val_ds,
        epochs=3
    )


    # input("Press the <ENTER> key to close the program...")



if __name__=="__main__":
    main()
