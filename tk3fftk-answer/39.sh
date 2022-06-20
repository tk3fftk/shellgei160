#!/bin/bash

# 題意は満たせているが…
# cat ../qdata/39/bash_description.txt | sed 's/ /\n/g'

cat ../qdata/39/bash_description.txt | sed 's/ / \n/g' | awk '{L+=length}L>31{print "";L=length}{printf $0}'

echo ""
echo "---"

cat ../qdata/39/bash_description.txt | fold -s -30

echo "---"

cat ../qdata/39/bash_description.txt | grep -Eo '.{,30}( |$)'
