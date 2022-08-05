#!/bin/bash

#最大公約数スクリプト

echo "自然数を2つ入力してください"

read a b

t=$a

if [ $a -lt $b ]
then
	 t=$b
fi

while [ $t -ne 0 ]
do
	x=`expr $a % $t`
	y=`expr $b % $t`
	if [ $x -eq 0 -a $y -eq 0 ]
        then
		echo "最大公約数は：$t"
		break
	fi
	t=`expr $t - 1`
done
