# ImageProcessor
Processing images in all needed sizes for iOS(and relevant Android sizes)
## Overview
* Converts bulk of images into different sizes ready for use
* iOS generated sizes:
* `@1x`
* `@2x`
* `@3x`
* Equivalent Android sizes:
* `MDPI`
* `XHDPI`
* `XXHDPI`
* Supported formats:
* `jpeg`
* `tiff`
* `png`
* `gif`
* `jp2`
* `pict`
* `bmp`
* `qtif`
* `psd`
* `sgi`
* `tga`

## Usage
Check out project, then add as much files as you want in ImageProcessor/images. The open terminal and run following command:
```
./loopFiles.sh
```

You may need to add needed permissions to script files:
```
chmod a+x loopFiles.sh
chmod a+x getDimensions.sh
chmod a+x processImage.sh
```
## Requirements
This project is written on bash, and uses Apple `sips` tools for image resizing.
## License
ImageProcessor is released under an MIT license. See LICENSE for more information.
## Creator
Hristo Todorov