#!/bin/bash

cat ../qdata/42/item.md | awk '/^([1-9]|#)/{if ($1=="#"){print; NR=0;} else print NR-1". "$2}'

echo ---

# answer
cat ../qdata/42/item.md | awk '/^[0-9]\./ {a++; $1=a"."; print} /^#/{a=0} !/^[0-9]\./' 
