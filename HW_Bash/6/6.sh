#!/bin/bash

if [ -f "input.txt" ]; then
  echo "Content of input.txt:"
  cat input.txt
  lines_number=$(wc -l < "input.txt")
  echo $'\n'
  echo "Lines number in input.txt: $lines_number"
  echo "Lines number in input.txt: $lines_number" > output.txt
else
  ls input.txt 2> error.log
  echo "input.txt not found, created error.log"
fi

