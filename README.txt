PART A INSTRUCTIONS:
To run part A you will need to call the generate_composite_image function in the matlab command window
The first argument should be the location of your target image surronded by imread('') e.g. imread('U:\CompVis\mosaic_target1.jpg')
The second argument should be the location of the source images iwih /*.jpg on the end and surronded by dir('') e.g. dir('U:\CompVis\Images\all_images\*.jpg')
The next two arguments specify the number of pixels for the output images width and height respectively
The fifth argument specifies the width and height for the tiles
the final argument is a boolean for if you would like to see the image as it is being built by the function
At the end of execution a figure should appear displaying the final output image

PART B INSCTRUCTIONS:
To train the model you will need to run the train function in the matlab command window
The first argument should be the location of the natural training images with /*.jpg on the end e.g. 'U:\CompVis\Images\natural_training\out_natural_1k\*.jpg'
The second argument should be the location of the manmade training images with /*.jpg on the end e.g. 'U:\CompVis\Images\manmade_training\out_manmade_1k\*.jpg'
The last argument specifies if you would like to pre load a previously trained set, this is mainly for development purposes and shouldn't need to be used
At the end of execution a file, seperation.mat, should be saved and can now be used for classification

To classify a set of images you will need to run the classifySet function in the matlab window (You must first have run the train function prior for this to work)
The first argument should be the location of the files you wish to classify followed by /*.jpg eg. 'U:\CompVis\Images\natural_test\out_natural_1k\*.jpg'
At the end of execution 2 number will be output detailing the number of natural and manmade images in the set

PART C INSTUCTIONS:
To run part C you will need to call the partC function in the matlab command window (You must first have run the train function prior for this to work)
The first argument should be the location of your target e.g. 'U:\CompVis\mosaic_target1.jpg'
The second argument should be the location of the natural images with /*.jpg on the end e.g. 'U:\CompVis\Images\natural_images\*.jpg'
The third argument should be the location of the manmade images with /*.jpg on the end e.g. 'U:\CompVis\Images\manmade_images\*.jpg'
The next two arguments specify the number of pixels for the output images width and height respectively
The sixth argument specifies the width and height for the tiles
the final argument is a boolean for if you would like to see the image as it is being built by the function
At the end of execution a figure should appear displaying the final output image, made using only images from the same class