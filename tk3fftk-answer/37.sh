#!/bin/bash

cat ../qdata/37/diarydiary.txt | grep -ozP '(.+)(\n)?(\1)'
