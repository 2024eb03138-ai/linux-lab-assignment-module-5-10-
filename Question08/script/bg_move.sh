#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

dir=$1

if [ ! -d "$dir" ]; then
  echo "Error: Directory does not exist"
  exit 1
fi

backup_dir="$dir/backup"
mkdir -p "$backup_dir"

echo "Parent PID: $$"

for file in "$dir"/*; do
  if [ -f "$file" ]; then
    mv "$file" "$backup_dir/" &
    echo "Moving $(basename "$file") in background. PID: $!"
  fi
done

echo "Waiting for background processes..."
wait
echo "All files moved successfully."
