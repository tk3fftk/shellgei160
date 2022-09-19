#!/bin/bash

# 2, 3列目を足す
cat ../qdata/practice/table.txt | awk '{print $0 " " $2+$3}'

echo ===

# 縦に集計
cat ../qdata/practice/table.txt | awk 'BEGIN{X=0;Y=0}{print $0; X=X+$2;Y=Y+$3}END{print "sum " X " " Y}'

echo ===

# a, bごとに縦に集計
cat ../qdata/practice/table.txt | awk 'BEGIN{Xa=0;Xb=0;Ya=0;Yb=0}{print $0; if($1=="a"){Xa=Xa+$2;Ya=Ya+$3}else{Xb=Xb+$2;Yb=Yb+$3}}END{print "sum a " Xa " " Ya; print "sum b " Xb " " Yb}'

echo ===

# 連想配列を使う answer
cat ../qdata/practice/table.txt | awk \
'{print; x[$1]+=$2;y[$1]+=$3}END{for (k in x){print k"計",x[k],y[k]}}'

echo ===

# 1の4列目の小数点以下2桁目を四捨五入して5列目に出力
# 正の数なら0.05, 負の数なら-0.05を足して10をかけ、小数部分を切り捨ててから10で割る answer
# 三項演算子を使って足す数を決めている
cat ../qdata/practice/table.txt | awk '{print $0 " " $2+$3 }' | awk '{print $0, int(($4 + ($4>0?0.05:-0.05))*10)/10}'
