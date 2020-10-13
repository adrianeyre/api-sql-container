#!/bin/bash

echo "----------------------------- START OF SCRIPTS -----------------------------"

sleep 30s;

for file in /scripts/custom/*.sql; do
    f=$(echo "${file##*/}");
    filename=$(echo $f| cut  -d'.' -f 1);
    /scripts/run-custom-scripts.sh $filename
done

echo "------------------------------ END OF SCRIPTS -------------------------------"