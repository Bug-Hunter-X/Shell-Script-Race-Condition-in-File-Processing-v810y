#!/bin/bash

# This script processes a list of files, addressing the race condition by ensuring synchronous operations

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for file in "${files[@]}"; do
  # Use a synchronous process
  touch "$file" 
  echo "Processing file: $file" 
done

echo "All files processed"