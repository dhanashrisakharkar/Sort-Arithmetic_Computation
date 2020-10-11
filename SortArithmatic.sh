#!/bin/bash -x


echo "Welcome to Sort Arithmetic Computation"

read -p "Enter the First Value  :" a
read -p "Enter the Secong Value :" b
read -p "Enter the Third Value  :" c

OUTPUT=$(($a+($b*$c)))

echo  "Output of Arithmetic Computation is" : $OUTPUT
