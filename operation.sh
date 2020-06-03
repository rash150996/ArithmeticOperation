echo "Welcome to Arithmetic operation"
echo "Reading Three inputs"
read -p "Enter the first Number = " a
read -p "Enter the second Number = " b
read -p "Enter the third Number = " c

op1=$(( $a + $b * $c ))
echo $op1
op2=$(( $a % $b + $c ))
echo $op2
op3=`echo "scale=2;$c + $a / $b" | bc`
echo $op3
