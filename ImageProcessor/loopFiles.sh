#!/bin/bash
FILES=images/*
for f in $FILES
do
  echo "Processing $f file..."
  ./getDimensions.sh $f
  # take action on each file. $f store current file name
done
