#!/bin/bash

grep $(cat ../qdata/33/kaibun | tail -1 | ruby -Ku -lne 'puts $_.reverse') ../qdata/33/kaibun && echo kaibun

echo ---

grep $(cat ../qdata/33/not_kaibun | tail -1 | ruby -Ku -lne 'puts $_.reverse') ../qdata/33/not_kaibun && echo kaibun

echo ---
# answer
diff <(grep -o . ../qdata/33/not_kaibun) <(grep -o . ../qdata/33/not_kaibun | tac)
