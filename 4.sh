#!/bin/bash
while getopts l:h: flag
do
    case "${flag}" in
        l) low=${OPTARG};;
        h) high=${OPTARG};;
    esac
done
echo "Low: $low";
echo "High: $high";

readarray -t arr

#declare -p arr

let j=0;
sum=0;
for line in "${arr[@]}"
    do
        numbers_array[$j] = echo "$line" | grep -Eo '[+-]?[0-9]+([.][0-9]+)?';
        $j+=1;    
    done

sum=$(IFS=+; echo "$((${numbers_array[*]}))")
echo $sum