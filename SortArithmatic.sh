#!/bin/bash -x


read -p "Enter the First Value  :" a
read -p "Enter the Secong Value :" b
read -p "Enter the Third Value  :" c

PART_TIME_HOUR=8


OUTPUT=$(($a*($b+$c)))

echo  "Output of Arithmetic Computation is" : $OUTPUT
echo  "        Part Time Our Is           " : $PART_TIME_HOUR
