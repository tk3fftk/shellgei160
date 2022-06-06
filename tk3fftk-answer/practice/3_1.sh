#!/bin/bash

# -n ファイルあるいは標準入力の内容を1行ずつ読む (内部的にはloop文を実行)
# -a 1行が空白区切りで"F"という配列に格納される
# -e perlを実行する
# -p sedのように各行を読み込んで、加工後の文字列を出力する
# $_ という変数に読み込んだ文字列が格納されている
echo -e "オトンオカンオカン\nオカンオトンオカン" | perl -C -Mutf8 -pe "s/オカン$/あかん/g"

echo ---

echo -e "オトン オカン オカン\nオカン オトン オカン" | perl -anle '$F[2]="あかん"; print "@F"'

echo ---

# -Ku 文字コードutf-8を利用
echo -e "オトン オカン オカン\nオカン オトン オカン" | ruby -Ku -ane '$F[2]="あかん";puts $F.join("")'

echo ===

seq 3 | python3 -c 'import sys; [ print(int(a)*2) for a in sys.stdin ]'

echo ---

seq 3 | python3 -c 'import sys;import math;[ print(math.sqrt((int(a)))) for a in sys.stdin ]'

echo ---

seq 3 | python3 -c 'import sys;[ print("番号:", int(a)) for a in sys.stdin ]'

echo ===

# grepの正規表現 -G (基本), -E (拡張), -P (Perlの)
echo '(bash|nologin)' | grep -G '^(bash|nologin)$'

echo 'あああああ!!' | grep -E '!{2}'

echo 処す?処す? | grep -o -G '処す?'

echo C/C++ | grep -o -G C.+

echo 36 | grep -P '\d' # 拡張でもだめ

echo とまとまとまと | grep -o -P 'と(?=まと)' | uniq -c

echo ===

echo 東京タワー東京ヨワー東京スカイツリー東京ヨワイツリー | sed -E 's/(東京)(タ|ス)/山本\2/g'
echo 東京タワー東京ヨワー東京スカイツリー東京ヨワイツリー | perl -pe 's/(東京)(?!ヨ)/山本/g'

echo ---
# 最長一致となり消せない
# echo 東京タワー東京ヨワー東京スカイツリー東京ヨワイツリー | sed -E 's/^東京.+ー(.+)//'
# (最左)最短一致
echo 東京タワー東京ヨワー東京スカイツリー東京ヨワイツリー | perl -pe 's/東京.*?ー//'
