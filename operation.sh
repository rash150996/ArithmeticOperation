#!/bin/bash -x
echo "Welcome to Arithmetic operation"
echo "Reading Three inputs"
read -p "Enter the first Number = " a
read -p "Enter the second Number = " b
read -p "Enter the third Number = " c

op1=$(( $a + $b * $c ))

op2=$(( $a % $b + $c ))

