#!/bin/bash

ls -U1 ./tmp | xargs -I{} grep -l '10' ./tmp/{} | xargs -P4 rm

#time ./4.sh 
#real    9m30.566s
#user    8m13.213s
#sys     2m30.199s