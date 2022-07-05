#!/bin/bash

cat ../qdata/41/annotation.md | grep -oP '\[(.)+\]' | sort | uniq -c | sort

# answer
# uniqはsort済み文字列でないとできないので、前方一致させる(ラベルは後ろにつける)必要がある。[A-F]で見るのはだめ
# uniq -fN オプションはスペース区切りの文字列において、前のN列を無視してuniqを実行する
# uniq -u オプションは 1つしかないレコードだけを出力
cat ../qdata/41/annotation.md | grep -oP '\[(.)+\]:?' | sed -E 's/]$/] main/g' | sed -E 's/]:$/] sub/g'| sort | awk '{print $2,$1}' | uniq -f 1 -u
# main [^abort_f]
# main [^about_b]
# sub [^about_d]
# sub [^about_f]
