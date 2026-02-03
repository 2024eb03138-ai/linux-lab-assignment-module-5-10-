#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 input.txt"
  exit 1
fi

file=$1

if [ ! -f "$file" ]; then
  echo "Error: File not found"
  exit 1
fi

> vowels.txt
> consonants.txt
> mixed.txt

tr -cs 'A-Za-z' '\n' < "$file" | while read word
do
  w=$(echo "$word" | tr 'A-Z' 'a-z')

  if [[ "$w" =~ ^[aeiou]+$ ]]; then
    echo "$word" >> vowels.txt

  elif [[ "$w" =~ ^[bcdfghjklmnpqrstvwxyz]+$ ]]; then
    echo "$word" >> consonants.txt

  elif [[ "$w" =~ ^[bcdfghjklmnpqrstvwxyz] && "$w" =~ [aeiou] ]]; then
    echo "$word" >> mixed.txt
  fi
done
