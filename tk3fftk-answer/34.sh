#!/bin/bash

# cat ../qdata/34/furigana.txt | ruby -Ku -ane 'p $F[0][$F[0].length-1]'

# answer
cat ../qdata/34/furigana.txt | sed -E 's/^(.*)(.*)([^あ-ん]*)\2/\1 \2 \3/'
