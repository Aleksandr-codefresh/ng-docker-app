#!/bin/bash

echo "begin allocating memory..."
for index in $(seq 200); do
    value=$(seq -w -s '' $index $(($index + 10240000000)))
    eval array$index=$value
    free -m
done
echo "...end allocating memory"
