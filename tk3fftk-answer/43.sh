#!/bin/bash

cat ../qdata/43/bunken.txt | sed -zE 's/\nh/ h/g' | sort | sed -E 's/ h/\nh/g'

# answer
echo ---

cat ../qdata/43/bunken.txt | awk 'NR%3==1 {k=$1};{print k,$0}' | sort -s -k 1,1 | sed 's/....//'
