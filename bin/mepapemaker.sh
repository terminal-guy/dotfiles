#!/usr/bin/bash

pape=$1

# get the width of the wallpaper
height=$(magick identify -format "%h" "$pape")
width=$(magick identify -format "%w" "$pape")

# determine smaller dimension to use for scale
if [[ "$height" -lt "$width" ]]; then
  scale_val=$height
else
  scale_val=$width
fi

# calculate appropriate density to scale the svg
# 25 is the dimension of either side of the svg
# 50 is the rough scale of the logo that will be on the final image (in %)
density=$(awk "BEGIN {print ($scale_val/25.0)*50}")

# generate a PNG mask from the source svg
convert \
  -density $density \
  -gravity center \
  -background white \
  -extent "${width}x${height}" \
  arch.svg \
  tmp_arch_mask.png

# generate wallpaper name
outfile_name=$(basename "$pape")

# add arch mask to original image
convert \
  -write-mask "tmp_arch_mask.png" \
  -gravity center \
  -blur 0x30 \
  -attenuate 0.3 \
  +noise Laplacian \
  -evaluate Multiply 1.3 \
  "$pape" \
  "arch__$outfile_name"

# delete temporary file
rm "tmp_arch_mask.png"
