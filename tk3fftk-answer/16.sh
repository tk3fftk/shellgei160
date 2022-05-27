#!/bin/bash

n="XYZ"; m=$n; for i in {A..C}; do m+=$i; echo $m; done; echo $n

# サブシェルでfor文を実行するようにする (とスコープが変わる)
echo ---

n="XYZ"; (for i in {A..C}; do n+=$i; echo $n; done); echo $n

echo ---
n="XYZ"; for i in {A..C}; do n+=$i; echo $n; done|cat; echo $n

# wコマンドは特に意味無し
echo ---
n="XYZ";w| for i in {A..C}; do n+=$i; echo $n; done; echo $n
