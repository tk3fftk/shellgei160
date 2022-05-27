#!/bin/bash

str='I am a perfect human'; echo ${str^^}

str='pen-pineapple-apple-pen'; echo ${str~}


echo 'I am a perfect human' | ( read a; echo ${a^^}) 
echo 'pen-pineapple-apple-pen' | (IFS=-; read -a w; echo "${w[*]^}")
