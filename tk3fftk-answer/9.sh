#!/bin/bash

cat ../qdata/9/log_range.log | grep -E '\[(24/Dec/2016 2[1-3]|25/Dec/2016 0[0-3])'

echo ---

# sed -n '/hoge/,/fuga/p' でhogeからfugaまでの行を出力できる
cat ../qdata/9/log_range.log | sed -n '/24\/Dec\/2016 21:..:../,/25\/Dec\/2016 03:..:../p'