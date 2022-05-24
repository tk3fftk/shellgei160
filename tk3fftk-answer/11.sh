#!/bin/bash

cat ../qdata/11/gijiroku.txt | sed -z -E 's/すず\n([^\n]+)\n/鈴木: \1\n/g;s/さと\n([^\n]+)\n/佐藤: \1\n/g;s/やま\n([^\n]+)\n/山田: \1\n/g'

echo ===

# $: 行の末尾
cat ../qdata/11/gijiroku.txt | xargs -n2 | sed 's/^すず/鈴木/;s/^さと/佐藤/;s/^やま/山田/;s/ /:/;s/$/\n/'
