#!/bin/bash

a=きたうらわ
echo "${a}を逆さにすると$(echo ${a} | rev)"

# <() プロセス置換、<()全体がファイル名のように扱われ、括弧内のコマンドの出力がそのファイルの内容にように扱われる
cat <(echo ${a}) <(echo を逆さにすると) <(echo ${a} | rev)
