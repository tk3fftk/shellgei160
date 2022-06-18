#!/bin/bash

# cat ../qdata/36/message.txt | sed -E 's/\)\(/\)\n\(/g'

# answer
cat ../qdata/36/message.txt | sed -E 's/\)\(/\)\n\(/g' | grep -P '^(\(\g<1>\)|[^()]+)$' | tr -d '()'

