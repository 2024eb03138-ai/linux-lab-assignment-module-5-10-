#!/bin/bash

DIRA="dirA"
DIRB="dirB"

# Check if directories exist
if [ ! -d "$DIRA" ] || [ ! -d "$DIRB" ]; then
  echo "Error: One or both directories do not exist."
  exit 1
fi

echo "Files only in dirA:"
ls "$DIRA" | grep -vxFf <(ls "$DIRB")

echo
echo "Files only in dirB:"
ls "$DIRB" | grep -vxFf <(ls "$DIRA")

echo
echo "Comparing common files:"
for file in $(ls "$DIRA"); do
  if [ -f "$DIRB/$file" ]; then
    if cmp -s "$DIRA/$file" "$DIRB/$file"; then
      echo "$file : SAME content"
    else
      echo "$file : DIFFERENT content"
    fi
  fi
done
