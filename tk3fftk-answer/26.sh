#!/bin/bash

# 子のプロセスが終了したときに親が受け取るシグナルSIGCHLDを使う
trap -- "date | awk '{print \$4}' | awk -F: '{if(\$1 >= 18 || \$1 <= 4){print \"hayaku kaere\"}}'" SIGCHLD

# answer
trap 'h=$(date +%-H); [ "$h" -ge 18 -o "$h" -lt 3] && echo "hayaku kaera"' SIGCHLD
