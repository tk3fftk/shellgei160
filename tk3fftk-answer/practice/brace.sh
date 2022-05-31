#!/bin/bash

# 1.txt 1.bash 2.txt 2.bash 3.txt 3.bash 4.txt 4.bash 5.txt 5.bash
echo {1..5}.{txt,bash}

echo ---

# 2.txt 2.bash 4.txt 4.bash 6.txt 6.bash 8.txt 8.bash 10.txt 10.bash
echo {2..10..2}.{txt,bash}

echo ---

# 山田山上田上
echo {山,上}{田,}

# グロブ (*.pngのようなワイルドカードを用いた文字列)
# root@a872fdf908bd:/home/tk3fftk/tk3fftk-answer/practice/tmp# ls ?.txt
# 1.txt  2.txt  3.txt  4.txt  6.txt  7.txt  8.txt  9.txt
# root@a872fdf908bd:/home/tk3fftk/tk3fftk-answer/practice/tmp# ls [1,2,6]5.*
# 15.bash  15.txt  25.txt  65.bash  65.txt
# root@a872fdf908bd:/home/tk3fftk/tk3fftk-answer/practice/tmp# ls [^2,9].*
# 1.bash  1.txt  3.bash  3.txt  4.bash  4.txt  5.bash  6.bash  6.txt  7.bash  7.txt  8.bash  8.txt
