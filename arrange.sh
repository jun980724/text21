#!/bin/bash


for file in files/*.txt; do
  
    first_letter=$(basename "$file" | cut -c1 | tr '[:upper:]' '[:lower:]')

    
    mkdir -p "$first_letter"


    mv "$file" "$first_letter/"
done

echo "all files is moved."
