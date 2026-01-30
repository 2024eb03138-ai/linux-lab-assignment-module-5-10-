#!/bin/bash

# Check argument count
if [ $# -ne 1 ]; then
    echo "Error: Please provide exactly one argument."
    exit 1
fi

path=$1

# Check if path exists
if [ ! -e "$path" ]; then
    echo "Error: Path does not exist."
    exit 1
fi

# If argument is a file
if [ -f "$path" ]; then
    echo "File analysis:"
    wc "$path"

# If argument is a directory
elif [ -d "$path" ]; then
    echo "Directory analysis:"
    total_files=$(find "$path" -type f | wc -l)
    txt_files=$(find "$path" -type f -name "*.txt" | wc -l)

    echo "Total files: $total_files"
    echo ".txt files: $txt_files"
else
    echo "Unsupported file type."
fi
