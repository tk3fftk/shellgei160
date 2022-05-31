#!/bin/bash

# read a ; while $a; do echo $a; done < $(echo /usr/*)

for i in $(cd /usr; echo *); do echo $i; done
