#!/bin/bash

cat ../qdata/38/this_is_it.txt | sed -E 's/\&(amp;)+//g' | sed -E 's/quot;/"/g'
