#!/bin/bash
input="/home/desai/file"
while IFS= read -r line
do
  echo "$line"
done < "$input"
