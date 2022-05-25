#!/bin/bash

if [ -n "$1" ] ; then 
  in=$1
else
  read in
fi

echo $(($in*2))
