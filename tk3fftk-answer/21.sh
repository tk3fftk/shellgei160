#!/bin/bash

ls -1 ../qdata/21/{dir_a/*,dir_b/file*,dir_c/*/file*,dir_c/*/*/*} | sort

echo ---

# answer (作業ディレクトリが違うためcdを入れている)
(cd ../qdata/21; find -type f | grep -v "\./dir_b/d" | sort)
