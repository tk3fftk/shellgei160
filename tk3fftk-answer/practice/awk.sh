#!/bin/bash

seq 5 | awk '/[24]/'
# 2
# 4

echo '---'
# seq 5 | awk '{ if(($1 % 2) == 0) print $1 }'
seq 5 | awk '(($1 % 2) == 0)'
# 2
# 4

echo '---'
seq 5 | awk '(($1 % 2) == 0) { printf "%d 偶数\n", $1 }'
# 2 偶数
# 4 偶数

echo '---'
seq 5 | awk '(($1 % 2) == 0) { printf "%d 偶数\n", $1 } (($1 % 2) != 0) { printf "%d 奇数\n", $1}'
# 1 奇数
# 2 偶数
# 3 奇数
# 4 偶数
# 5 奇数

echo '---'
seq 5 | awk 'BEGIN{a=0}(($1 % 2) == 0) { printf "%d 偶数\n", $1 } (($1 % 2) != 0) { printf "%d 奇数\n", $1}{a+=$1}END{printf "合計%d\n", a}'
# 1 奇数
# 2 偶数
# 3 奇数
# 4 偶数
# 5 奇数
# 合計15

echo '---'
seq 5 | awk '$1%2==0{ printf "偶数\n" } $1%2{ printf "奇数\n"}' | sort | uniq -c | awk '{print $2,$1}'
# 奇数3
# 偶数2
