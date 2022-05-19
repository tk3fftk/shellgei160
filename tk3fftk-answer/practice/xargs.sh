#!/bin/bash

seq 4 | xargs mkdir -p

seq 4 | xargs rm -d 

mkdir 1 3
# -nで入力された文字列をn個ずつコマンドに渡す
seq 4 | xargs -n2 mv
rm -d 2 4

seq 4 | xargs -I@ mkdir dir_@
seq 4 | xargs -I@ rm -d dir_@

# 1.3.g
seq 4 | awk '$1%2==0 {printf "mkdir even_%d\n", $1}$1%2{printf "mkdir odd_%d\n",$1}' | bash
seq 4 | awk '$1%2==0 {printf "rm -d even_%d\n", $1}$1%2{printf "rm -d odd_%d\n",$1}' | bash