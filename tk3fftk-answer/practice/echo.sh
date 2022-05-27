#!/bin/bash

echo external echo
time for i in {1..1000}; do /bin/echo "$i" > /dev/null; done

echo builtin echo
time for i in {1..1000}; do builtin echo "$i" > /dev/null; done

# ビルトインコマンドはプロセスを生成しないため圧倒的に高速
# external echo
# real    0m0.844s
# user    0m0.701s
# sys     0m0.261s
# builtin echo
# 
# real    0m0.008s
# user    0m0.008s
# sys     0m0.000s