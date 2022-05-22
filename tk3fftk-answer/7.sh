#!/bin/bash

cat ../qdata/7/kakeibo.txt | awk 'BEGIN{s=0}{if($2~"^*" || $1 < 20191001){s=s+$3*1.08}else{s=s+$3*1.1}}END{print int(s)}'