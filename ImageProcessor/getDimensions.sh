#!/bin/bash
extension="${1##*.}"
baseName="${1%.*}"
height=`sips --getProperty pixelHeight $1 | sed -E "s/.*pixelHeight: ([0-9]+)/\1/g" | tail -1`
width=`sips --getProperty pixelWidth $1 | sed -E "s/.*pixelWidth: ([0-9]+)/\1/g" | tail -1`
if [[ $height -gt $width ]]; then
    # height > width
    ./processImage.sh $baseName $extension $height
elif [[ $width -gt $height ]]; then
    # width > height
    ./processImage.sh $baseName $extension $width
else
    # height == width
    ./processImage.sh $baseName $extension $height
fi
