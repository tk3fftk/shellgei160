#!/bin/bash
LANG="ja_JA.UTF-8"
USER="root"

# 配列
a=( "$SHELL" "$LANG" "$USER" )

# 連想配列
declare -A b
b["SHELL"]="$SHELL"
b["LANG"]="$LANG"
b["USER"]="$USER"

echo ${a[1]}
echo ${b["LANG"]}

# 全要素出力
echo ${a[*]}
echo ${a[@]}
echo ${b[*]}
echo ${b[@]}
# @と*はおおよそ同じだが、*が使われ、かつ${}全体がクォートされた場合にBashはIFSでつなげた一つの文字列と扱われる

echo ${#a[*]}
echo ${#b[*]}
# 3

echo ${!b[*]}
# キーをすべて出力

echo ---

set aa bb cc

for x in "$1" "$2" "$3"; do echo $x ; done

seq 3 | while read x; do echo -n "$x "; done
