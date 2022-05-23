#!/bin/bash

cat ../qdata/8/access.log | awk -F'/' '{print $3}' | awk -F':' 'BEGIN{am=0;pm=0}{if($2>=12){pm++}else{am++}}END{printf "午前 %d, 午後 %d\n", am, pm}'