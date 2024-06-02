#! /usr/bin/bash

# Script to compress jpgs in the project

# Check for dependencies
if ! command -v jpegoptim &> /dev/null; then
    echo "jpegoptim could not be found. Please install it."
    exit 1
fi

# Check if IMG_DIR exists
IMG_DIR=$(pwd)/docs/img
if [[ ! -d $IMG_DIR ]]; then
    echo "No images dir found in the project."
    exit 1
fi

# Compress files that are greater than 250 kb to 200kb
echo "Compressing images in $IMG_DIR..."
for img in $IMG_DIR/*.jpg; do
    if [[ $(stat -c %s $img) -gt 250000 ]]; then
        echo $(basename "$img") greater than 250kb, compressing...
        jpegoptim --size 200 $img
    fi
done;