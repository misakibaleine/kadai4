#!/bin/bash

#動作確認シェルスクリプト

ans="/tmp/$$-ymisaki-ans"
gcd="/tmp/$$-ymisaki-gcd"

#0が入力されたとき

#マイナスが含まれるとき

#文字列が含まれるとき

#入力が少ない場合
#echo "自然数を2つ入力してください" > {$ans}
#./gcd.sh 4 2> {$gcd} && exit 1
#diff ${ans} ${gcd} || exit 1

#入力が多い場合

#後処理
rm /tmp/$$-ymisaki-*
