#!/bin/bash

# A small script for generating preview "screenshots" of a PDF, requires ImageMagick to be present
input="$1"
output="$2"
convert -units pixelsperinch -density 288 \
    $input \
    -quality 100 \
    -depth 8 -colorspace RGB \
    -background white -alpha background -alpha off \
    -resize 50% \
    $output
