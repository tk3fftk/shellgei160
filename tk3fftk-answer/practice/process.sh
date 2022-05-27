#!/bin/bash

# sleep 100 | sleep 100 | sleep 100 | sleep 100 | sleep 100 &
# ps | awk '$4=="sleep"' | wc -l

sleep 100 | sleep 100 | sleep 100 | sleep 100 | sleep 100 &
pstree -T