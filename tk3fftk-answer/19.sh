#!/bin/bash

# declare -A a; IFS=- ; read -A a  < ./19_cardno; for b in ${a[@]}; do echo $b; done ; 

# answer
# printf xxxx-xxxx 1<> 19_cardno
IFS=- ; a=($(<19_cardno)); echo xxxx-xxxx-${a[2]}-${a[3]}
