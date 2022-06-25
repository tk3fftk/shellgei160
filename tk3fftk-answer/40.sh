#!/bin/bash

cat ../qdata/40/kanjinum.txt | sed -zE 's/(.)\n(、|。)/\1\2\n/g'

# 漢数字 -> 数字変換は答えを見てもそれ用のソフトを入れる、だったのでパス
