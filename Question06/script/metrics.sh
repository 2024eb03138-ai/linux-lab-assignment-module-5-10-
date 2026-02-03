#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 input.txt"
  exit 1
fi

file=$1

if [ ! -f "$file" ]; then
  echo "Error: File does not exist"
  exit 1
fi

words=$(tr -cs 'A-Za-z' '\n' < "$file")

longest=$(echo "$words" | awk '{ if (length($0) > max) { max=length($0); word=$0 } } END { print word }')
shortest=$(echo "$words" | awk 'NR==1 { min=length($0); word=$0 } { if (length($0) < min) { min=length($0); word=$0 } } END { print word }')

total_length=$(echo "$words" | awk '{ sum+=length($0) } END { print sum }')
count=$(echo "$words" | wc -l)
average=$(echo "scale=2; $total_length / $count" | bc)

unique=$(echo "$words" | sort | uniq | wc -l)

echo "Longest word: $longest"
echo "Shortest word: $shortest"
echo "Average word length: $average"
echo "Total unique words: $unique"
