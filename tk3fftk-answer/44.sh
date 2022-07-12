#!/bin/bash

cat ../qdata/44/diary.txt | sed 's/\n/ /g' | awk '/シェルスクリプト/{print $0,"@"} !/シェルスクリプト/ {print $0}'

echo ---

# answer
cat ../qdata/44/diary.txt | sed -Ez 's/シ.?ェ.?ル.?ス.?ク.?リ.?プ.?ト/%&%/g' | sed '/%/s/$/ @/; s/%//g'
