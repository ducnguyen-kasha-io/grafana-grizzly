#!/bin/bash

resources_dir="resources"

# Iterate through folders
for folder in "$resources_dir"/*/; do
  folder_name=$(basename "$folder")
  echo "Importing resources from folder: $folder_name"

  # Apply resources in the current folder
  grr apply "$folder"

  if [ $? -ne 0 ]; then
    echo "Error importing resources from folder: $folder_name"
  fi
done

echo "Finished importing resources."