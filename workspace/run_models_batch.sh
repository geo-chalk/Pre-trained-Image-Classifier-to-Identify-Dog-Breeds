#!/bin/sh
# */AIPND-revision/intropyproject-classify-pet-images/run_models_batch.sh
#                                                                             
# PROGRAMMER: Jennifer S. | George Chalkiopoulos
# DATE CREATED: 02/08/2018                                  
# REVISED DATE: 02/27/2018  - 05/14/2020
# PURPOSE: Runs all three models to test which provides 'best' solution.
#          Please note output from each run has been piped into a text file.
# REVISION: Added results to a course_images_results/ directoy
#
# Usage: sh run_models_batch.sh    -- will run program from commandline within Project Workspace
#  
mkdir course_images_results/ -p
python check_images.py --dir pet_images/ --arch resnet  --dogfile dognames.txt > course_images_results/resnet_pet-images.txt
python check_images.py --dir pet_images/ --arch alexnet --dogfile dognames.txt > course_images_results/alexnet_pet-images.txt
python check_images.py --dir pet_images/ --arch vgg  --dogfile dognames.txt > course_images_results/vgg_pet-images.txt
