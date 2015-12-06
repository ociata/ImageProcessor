#!/bin/bash
# passed arguments should be 1-filename 2-extension 3-current bigger size(w/h)

# create output directory(if needed)
LOCATION_DIR=$(dirname "${1}")
OUTPUT_DIR="$LOCATION_DIR/outputs"
if [ ! -d "$OUTPUT_DIR" ]; then
  # output not existing, create one
  echo "creating output directory: $OUTPUT_DIR"
  mkdir "$OUTPUT_DIR"
fi

IMAGE_NAME=$(basename "$1")
ORIGIMAGE="$1.$2"
echo "create @3x_xxhdpi image(only renaming)"
cp "$ORIGIMAGE" "$OUTPUT_DIR/$IMAGE_NAME@3x_xxhdpi.$2"

echo "create @2x_xhdpi image(2/3 of original image sige)"
XHSIZEF=$(expr $3 \* 2 / 3)
XHSIZEI=${XHSIZEF%.*}
sips -Z $XHSIZEI $ORIGIMAGE --out "$OUTPUT_DIR/$IMAGE_NAME@2x_xhdpi.$2"

echo "create @1x_mdpi image(1/3 of original image sige)"
MSIZEF=$(expr $3 / 3)
MSIZEI=${MSIZEF%.*}
sips -Z $MSIZEI format $ORIGIMAGE --out "$OUTPUT_DIR/$IMAGE_NAME@1x_mdpi.$2" 

