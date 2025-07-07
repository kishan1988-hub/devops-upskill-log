#!/bin/bash
# check-perm.sh

file=$1

if [ -x "$file" ]; then
  echo "$file is executable"
else 
  echo "$file is NOT executable"
fi
