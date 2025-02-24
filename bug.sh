#!/bin/bash

# This script attempts to process a list of files, but it contains a subtle race condition.

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for file in "${files[@]}"; do
  # The problem is here. The touch command is asynchronous and may not complete before the next iteration starts.
  touch "$file" & 
  echo "Processing file: $file" 
done

wait # Wait for background processes to complete

echo "All files processed"