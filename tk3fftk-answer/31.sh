#!/bin/bash

cat ../qdata/31/iampen.txt | sed -E "s/<strong>(.+)<\/strong>/\U\1/"

