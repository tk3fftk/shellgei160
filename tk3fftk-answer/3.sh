#!/bin/bash

# find ./tmp 
# sed -i 's//'
seq 1000000 | awk '{printf "./tmp/%d ./tmp/%07d\n", $1, $1}' | xargs -n2 -P2 mv
# mv ./tmp/1 0000001