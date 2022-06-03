#!/bin/bash

sleep_time=3

trap -- 'echo change to sleep time to 1; sleep_time=1; while sleep $sleep_time; do date; done' SIGINT

while sleep $sleep_time; do date; done

# answer
while sleep 3; do date; done
# ctrl + C を押した後に以下のコマンド
# !!は直前のコマンドを指す
!!:s/3/1/

^3^1

fc -s 3=1
