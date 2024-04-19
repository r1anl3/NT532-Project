#!/bin/bash

# Prompt the user for input
read -p "Enter num: " num
read -p "Enter type (detect/classify): " type
read -p "Enter source (image/video path): " source

# Run the Python code with the entered arguments
command = python3 trt-yolo-${num}.py --${type} "${source}" -m yolov4-416
echo "Running command: ${command}"
python3 command


echo "Done!"