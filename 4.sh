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

while read line; do
	echo $line
done
