#!/bin/bash

grep '\.exe$' $(find ../qdata | grep files.txt)

echo '---'

cat $(find ../qdata | grep files.txt) | awk '/\.exe$/'

echo '---'
# -n 各行を自動的に出力しない + //p で正規豹変にマッチした行だけ出力
cat $(find ../qdata | grep files.txt) | sed -n '/\.exe$/p'
