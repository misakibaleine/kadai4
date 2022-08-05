#!/bin/bash

#最大公約数スクリプト

#変数を入力

#事前判定
#数値に0が含まれていないことを確認
if [ $1 -eq 0 ] || [ $2 -eq 0 ]
then
	echo "エラー：自然数を入力してください"
	exit 1
#数値にマイナスが含まれていないことを確認
elif [ $1 -lt 0 ] || [ $2 -lt 0 ]
then
	echo "エラー：数値にマイナスが含まれています"
	exit 1
#入力数が2よりも少ないとき
#else [ $# -ne 2 ]
#then
#	echo "$#"
#	echo "エラー：自然数を2つ入力してください"
#	exit 1
fi
	
#最大公約数を求める

t=$1

if [ $1 -lt $2 ]
then
	t=$2
fi

while [ $t -ne 0 ]
do
	x=`expr $1 % $t`
	y=`expr $2 % $t`
	if [ $x -eq 0 ] && [ $y -eq 0 ]
        then
		echo "最大公約数は：$t"
		break
	fi
	t=`expr $t - 1`
done
