#!/bin/sh

# sum_of_odds.sh - calculate sum of odd integers

__version__=1.1
__date__='2021-01-16'

up_to=170

function is_odd()
{
  remainder=$(($1 % 2))
  if [ $remainder -eq 0 ]; then
    is_odd_returned=0
  else
    is_odd_returned=1
  fi
}

sum=0
number_of_odds=0
last_odd=0

declare -a integers=$(seq 0 $up_to)
for i in ${integers[@]}
do
  is_odd $i
  if [ $is_odd_returned -eq 1 ]; then
    sum=$(($sum + $i))
    let number_of_odds++
    last_odd=$i
  fi
done

if [ $sum -eq $(($number_of_odds * $number_of_odds)) ]; then
  if [ $number_of_odds -eq 0 ]; then
    :
  elif [ $number_of_odds -lt 7 ]; then
    echo $sum
  else
    echo '1 + 3 + 5 + ... +' $(($last_odd - 1)) \
         '+' $last_odd '=' $sum
  fi
else
  echo 'Unexpected error:' $sum >&2
fi
