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
echo "Total Lenght Of Dictionary" : ${#Result[@]}

declare -a arr
j=1
for ((i=0; i<${#Result[@]}; i++))
do
       arr[$i]=${Result[$j]}
          ((j++))
done

echo "All result In      Array"   : ${arr[@]}
echo "All Index  Of      Array  " : ${!arr[@]}
echo "Total Lenght Of    Array"   : ${#arr[@]}

echo " "
#Descending Order
for i in $( echo " ${arr[0]} ${arr[1]} ${arr[2]} ${arr[3]} " );
do

  echo "Output in Ascending Order": $i

done | sort -r
echo " "
echo " "
#Ascending Order
for i in $( echo " ${arr[0]} ${arr[1]} ${arr[2]} ${arr[3]} " | sort -r );
do

  echo "Output in Ascending Order": $i

done 
