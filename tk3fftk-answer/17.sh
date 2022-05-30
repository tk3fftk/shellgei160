#!/bin/bash

while read a ; do builtin echo $a; done < /etc/passwd > a
