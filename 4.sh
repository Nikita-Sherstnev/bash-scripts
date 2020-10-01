#!/bin/bash
while getopts l:h: flag
do
    case "${flag}" in
        l) low=${OPTARG};;
        h) high=${OPTARG};;
    esac
done

readarray -t arr

sum=0;
numbers_array=( );
for line in "${arr[@]}"
    do
        numbers_array+=("$(echo $line | grep -Ewo '[+-]?[0-9]+')")
    done

echo "${#numbers_array[@]}"


for i in ${numbers_array[@]}; do
    if (( "$i" > "$low")) && (( "$i" < "$high" )); then
        echo $i;
        let sum+=$i
    fi
done
echo $sum