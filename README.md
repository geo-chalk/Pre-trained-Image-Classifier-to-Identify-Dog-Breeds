# Pre-trained-Image-Classifier-to-Identify-Dog-Breeds
Part of Udacity Course. This is a pre-trained Image Classifier that identifies Dog Breeds

Main code is in the check_images.py file. 

There are 3 possible arguments:
--dir (default is uploaded_images/): where the input folder, cointaining images to be classified, is pointed
--arch (default is vgg): which defined one of three possible achritectures to be used (resnet,alexnet,vgg)
--dogfile (default is dognames.txt): containing a list of dog names

There are 3 bash scripts which test each architecture and save the output to 3 files.
run_models_batch.sh: input pet_images/ output course_images_results/{arch}_pet-images.txt
run_models_batch_uploaded.sh: input uploaded_images/ output uploaded_results/{arch}_uploaded-images.txt
