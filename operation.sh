#!/bin/bash -x
echo "Welcome to Arithmetic operation"
echo "Reading Three inputs"
read -p "Enter the first Number = " a
read -p "Enter the second Number = " b
read -p "Enter the third Number = " c

declare -A Arithmetic

i=1
while (( i<=4 ))
do
	case $i in
			1)
				op1=$(( $a + $b * $c ))
				Arithmetic["$i"]=$op1
				;;
			2)
				op2=$(( $a % $b + $c ))
				Arithmetic["$i"]=$op2
				;;
			3)
				op3=`echo "scale=2;$c + $a / $b" | bc`
				Arithmetic["$i"]=$op3
				;;
			4)
				op4=$(( $a * $b + $c ))
				Arithmetic["$i"]=$op4
				;;
			*)
				echo "Invalid"
				;;
	esac
	i=`expr $i + 1`
done

for (( i=0; i<=4; i++ ))
do
	ArithArr[$i]=${Arithmetic[$i]}
done

echo "descending order : "
printf '%s\n' "${ArithArr[@]}" | sort -r






