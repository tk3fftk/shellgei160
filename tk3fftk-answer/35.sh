#!/bin/bash

cat ../qdata/35/speech.txt | perl -C -Mutf8 -pe 's/(.*?)([\p{Katakana}]{4})([\p{Katakana}])(.+)/\1\2/'

# cat ../qdata/35/speech.txt | ruby -Ku -pe 's/(.*?)([\p{Katakana}]{5})(.+)/\1\2/'
