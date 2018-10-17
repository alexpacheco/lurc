#!/bin/bash

echo -n " Enter a number less than 10: "

read counter

factorial=1

until [ $counter -le 1 ]; do
  factorial=$[ $factorial * $counter ]
  let counter-=1
done

echo $factorial

