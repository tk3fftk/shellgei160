#!/bin/bash

# die
# while read a; do IFS=:; read -r b < (echo $a); echo $b; done < /etc/passwd

# answer
declare -A x; IFS=: ; while read {a..g} ; do x[$g]+=. ; done < /etc/passwd ; \
for s in ${!x[@]} ; do echo $s ${#x[$s]}; done ; unset x
