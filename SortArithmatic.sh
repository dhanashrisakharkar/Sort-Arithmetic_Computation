#!/bin/bash -x


read -p "Enter the First Value  :" a
read -p "Enter the Secong Value :" b
read -p "Enter the Third Value  :" c

declare -A Result

Result[1]="$(($a+($b+$c)))"
Result[2]="$((($a*$b)+$c))"
Result[3]="$(($a+($b/$c)))"
Result[4]="$((($a%$b)+$c))"

echo "All result In  Dictionary"  : ${Result[@]}
echo "All Index  Of  Dictionary"  : ${!Result[@]}
echo "Total Lenght Of  Dictionary": ${#Result[@]}


