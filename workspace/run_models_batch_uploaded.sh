#!/bin/sh
# */AIPND-revision/intropyproject-classify-pet-images/run_models_batch_uploaded.sh
#                                                                             
# PROGRAMMER: Jennifer S. | George Chalkiopoulos
# DATE CREATED: 02/08/2018                                  
# REVISED DATE: 02/27/2018  - 05/14/2020
# PURPOSE: Runs all three models to test which provides 'best' solution on the Uploaded Images.
#          Please note output from each run has been piped into a text file.
# REVISION: Added results to a uploaded_results/ directoy
#
# Usage: sh run_models_batch_uploaded.sh    -- will run program from commandline within Project Workspace
#  
mkdir uploaded_results/ -p
python check_images.py --dir uploaded_images/ --arch resnet  --dogfile dognames.txt > uploaded_results/resnet_uploaded-images.txt
python check_images.py --dir uploaded_images/ --arch alexnet --dogfile dognames.txt > uploaded_results/alexnet_uploaded-images.txt
python check_images.py --dir uploaded_images/ --arch vgg  --dogfile dognames.txt > uploaded_results/vgg_uploaded-images.txt
