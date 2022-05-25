#!/bin/bash

seq 10 | xargs -I{} bash -c "echo "羊が{}匹" ; sleep 1"
