#!/bin/bash

echo -n "Enter a number less than 10:"

read counter

factorial=1

for i in $(seq 1 $counter); do
  let factorial*=$i
done

echo $factorial

