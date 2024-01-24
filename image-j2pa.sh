#!/bin/bash

if ! command -v jp2a &> /dev/null; then
    echo "jp2a is not installed. Please install it before continuing."
    exit 1
fi

images_directory="/home/luqueta/j2p-custom-imgs/"

if [ ! -d "$images_directory" ]; then
    echo "Images directory does not exist: $images_directory"
    exit 1
fi

images=("$images_directory"/*)

if [ ${#images[@]} -eq 0 ]; then
    echo "No images found in the directory: $images_directory"
    exit 1
fi

image_selected="${images[$(shuf -i 0-$((${#images[@]}-1)) -n 1)]}"

jp2a --color "$image_selected"

sleep 2

clear
