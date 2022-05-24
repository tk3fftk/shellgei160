#!/bin/bash

cat ../qdata/10/headings.md | sed -E 's/^# (.*)/\1\n===/g' | sed -E 's/^## (.*)/\1\n---/g'