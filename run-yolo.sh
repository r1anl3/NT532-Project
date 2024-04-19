#!/bin/bash

# Prompt the user for input
read -p "Enter num: " num
read -p "Enter type (onboard/video/image): " type
read -p "Enter source (id/video/image path): " source

# Run the Python code with the entered arguments
python3 trt-yolo-${num}.py --${type} "${source}" -m yolov4-416

echo "Done!"