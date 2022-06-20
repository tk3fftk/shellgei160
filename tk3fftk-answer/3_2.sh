#!/bin/bash

# -z 改行を無視する(ヌル文字(\o)を改行扱いする)オプション
cat ../qdata/practice/konden | sed -zE 's/私\n?財\n?法/おれのもの/g'

echo ---

cat ../qdata/practice/konden | grep -ozP '墾田永年\n?私\n?財\n?法\n?'

echo -----

echo シェルゲイおじさん | nkf --hiragana

echo ---

echo シェルゲイおじさん | nkf --katakana

echo ---

echo シェルゲイおじさん | nkf --katakana | nkf -Z4

echo ---

echo シェルゲイおじさん | nkf -Z4 | sed -e 's/ﾞ//g' | nkf --hiragana

echo ---

echo ｼｪﾙｹﾞｲオジサン2１６号 | nkf -Z

echo -----

echo 我々はシェル芸人だ。 | mecab -Oyomi | nkf -h

echo ---

echo おまえもしぇるげいにんにしてやろうか。

echo ---

echo 我々はシェル芸人だ。| trans ja:en -b

echo ----

echo -e '# 見出し\n\n本文です。\n\n* 箇条書きです。\n* これも箇条書き' | pandoc
