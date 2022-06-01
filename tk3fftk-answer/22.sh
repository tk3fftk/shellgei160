#!/bin/bash

echo {hoge,fuga,piyo,}.{tomato,potato,callot,peman}.{co.jp,com,dev,net}  | tr " " "\n" | sort -R | sed 's/^\.//'
