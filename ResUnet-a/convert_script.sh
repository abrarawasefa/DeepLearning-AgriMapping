#!/bin/bash

input_directory="./gt"
output_directory="./output"

for file in ${input_directory}/*.tif; do
    filename=$(basename "$file")
    output_file="${output_directory}/${filename}"
    gdal_translate -ot UInt16 "$file" "$output_file"
done
