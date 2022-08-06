#!/bin/bash

#動作確認シェルスクリプト

ans="/tmp/$$-ymisaki-ans"
gcd="/tmp/$$-ymisaki-gcd"

#正常確認
echo "最大公約数は：5" > ${ans}
./gcd.sh 65 70 ${gcd}
diff ${ans} ${gcd}

##数字以外が入力されたとき
#1つめが文字列
echo "エラー：数字を入力してください" > ${ans}
./gcd.sh aa 4 > ${gcd} && exit 1
diff ${ans} ${gcd} || exit 1

#2つめが文字列
echo "エラー：数字を入力してください" > ${ans}
./gcd.sh 83 b > ${gcd} && exit 1
diff ${ans} ${gcd} || exit 1

#どちらも文字列
echo "エラー：数字を入力してください" > ${ans}
./gcd.sh aaa bb > ${gcd} && exit 1
diff ${ans} ${gcd} || exit 1

#途中に文字列が含まれる
echo "エラー：数字を入力してください" > ${ans}
./gcd.sh  6s 77  > ${gcd} && exit 1
diff ${ans} ${gcd} || exit 1

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

#後処理
rm /tmp/$$-ymisaki-*
