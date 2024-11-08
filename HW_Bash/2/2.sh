#!/bin/bash

echo "Current PATH: $PATH"

if [ -z "$1" ]; then
  echo "No path was submitted to add in PATH."
  exit 1
elif [ ! -d "$1" ]; then
  echo "Submitted path '$1' is not a directory or doesnt exist"
  exit 1
else
  export PATH="$1:$PATH"
  echo "New PATH: $PATH"
fi
