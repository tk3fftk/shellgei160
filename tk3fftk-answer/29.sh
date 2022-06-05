#!/bin/bash

# shellcheck ../qdata/29/fb.bash

# answer
bash -n ../qdata/29/fb.bash |& awk -F'[: ]' '!a[$4]++ {print $4}'
