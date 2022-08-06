#!/bin/bash

#動作確認シェルスクリプト

ans="/tmp/$$-ymisaki-ans"
gcd="/tmp/$$-ymisaki-gcd"

##入力が少ない場合
#0の場合
echo "エラー：自然数を2つ入力してください" > ${ans}
./gcd.sh > ${gcd} && exit 1
diff ${ans} ${gcd} || exit 1
#1の場合
echo "エラー：自然数を2つ入力してください" > ${ans}
./gcd.sh 4 > ${gcd} && exit 1
diff ${ans} ${gcd} || exit 1

##入力数が2よりも多い場合
#3の場合
echo "エラー：自然数を2つ入力してください" > ${ans}
./gcd.sh 55 65 85  > ${gcd} && exit 1
diff ${ans} ${gcd} || exit 1
#5の場合
echo "エラー：自然数を2つ入力してください" > ${ans}
./gcd.sh 3 9 27 36 72 56 > ${gcd} && exit 1
diff ${ans} ${gcd} || exit 1

#0が入力されたとき
echo "エラー：自然数を入力してください" > ${ans}
./gcd.sh 0 4 > ${gcd} && exit 1
diff ${ans} ${gcd} || exit 1

#マイナスが含まれるとき
echo "エラー：数値にマイナスが含まれています" > ${ans}
./gcd.sh -7 7 > ${gcd} && exit 1
diff ${ans} ${gcd} || exit 1

#文字列が含まれるとき

#入力が多い場合

#後処理
rm /tmp/$$-ymisaki-*
