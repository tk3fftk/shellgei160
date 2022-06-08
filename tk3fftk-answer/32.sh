#!/bin/bash

cat ../qdata/32/kaibun.txt | ruby -Ku -ne 'puts $_ if $_.strip==$_.strip.reverse'

echo ---

# answer
rev ../qdata/32/kaibun.txt | grep -xf - ../qdata/32/kaibun.txt
