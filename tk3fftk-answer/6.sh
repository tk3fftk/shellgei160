#!/bin/bash
echo "" | awk '{s=""; for(i=0;i<5;i++){printf "%sx\n", s; s = sprintf(" %s", s)}}' | tac
#    x
#   x
#  x
# x
#x

# 別解
# :a ラベル
# p print
# s 置換 (空白を削除)
# ta 前の命令が成功したらaに戻る
# d 残った文字列を削除
# ; 命令の区切り
# echo '    x' | sed ':a;p;s/ //;ta;d'