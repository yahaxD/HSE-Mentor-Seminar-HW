#!/bin/bash

case $1 in 
  "l") 
   output_file="fileslist.txt"
   > "$output_file"
   for file in *; do
     if [ -d "$file" ]; then
       echo "$file is directory" >> "$output_file"
     elif [ -f "$file" ]; then
       echo "$file is regular file" >> "$output_file"
     elif [ -c "$file" ]; then
       echo "$file is character file" >> "$output_file"
     elif [ -L "$file" ]; then
       echo "$file is symbolic link" >> "$output_file"
     else
       echo "$file is unknown type" >> "$output_file"
     fi	
   done 
   echo "List of files was saved in fileslist.txt"
   if [[ "$2" == s ]]; then
     cat "$output_file"
   fi ;;	
   "e")
    if [ -z  "$2" ]; then
      echo "No file was submitted for verification"
    else
      if [ -e "$2" ]; then
        echo "File '$2' found"
      else
        echo "File '$2' not found"
      fi
    fi ;;
   "i")
   for file in *; do
     mode="$(stat -c '%A' "$file")" || exit $?
     echo "'$file'  $mode"
   done ;;
esac
