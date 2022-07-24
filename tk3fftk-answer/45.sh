#!/bin/bash

# answer

# uniq -f 1: 1列目無視, -D: 上下に同じ記述のある行すべてが出力される
cat ../qdata/45/sh_highschool | awk 'NF{print NR,"\0"$0}' | sort -k2,2 | uniq -f 1 -D | sort -k1,1n
# 3 窓に差し込む
# 4 朝日を浴びて
# 5 締め切り原稿
# 8 シェル芸 シェル芸
# 9 シェル芸 シェル芸
# 12 窓に差し込む
# 13 朝日を浴びて
# 14 締め切り原稿
# 17 シェル芸 シェル芸
# 18 シェル芸 シェル芸

# n, 行番号 t 文章を連結したもの ns 行番号を並べたもの
cat ../qdata/45/sh_highschool | awk 'NF{print NR,"\0"$0}' | sort -k2,2 | uniq -f 1 -D | sort -k1,1n | awk -F '\0' 'n+1!=$1{print t,"\0",ns; t=ns=""}{n=$1; t=t$2; ns=ns n}END{print t,"\0",ns}'
# 窓に差し込む朝日を浴びて締め切り原稿  3 4 5 
# シェル芸 シェル芸シェル芸 シェル芸  8 9 
# 窓に差し込む朝日を浴びて締め切り原稿  12 13 14 
# シェル芸 シェル芸シェル芸 シェル芸  17 18 