#!/bin/bash

# answer
echo ${!BASH*}
echo ---
set | grep ^BASH | awk -F'=' '{print $1}'
