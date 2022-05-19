#!/bin/bash

time ls -1 ../qdata/2/img/*.png | sed -E 's/(.*)\.png$/\1/' | xargs -P2 -I{} convert {}.png {}.jpg
