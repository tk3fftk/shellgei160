#!/bin/bash

a=私は
b=俳優よ

c=$a$b ; echo $c
# 私は俳優よ

a+=$b ; echo $a
# 私は俳優よ

b=${a:0:1}${a:2:2} ; echo $b
# 私俳優

c=${a/俳優/排骨麺} ; echo $c
