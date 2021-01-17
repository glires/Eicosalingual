#!/bin/csh

# sum_of_odds.csh - calculate sum of odd integers

set __version__ = 1.1
set __date__ = 2021-01-17

@ up_to = 170

@ sum = 0
@ number_of_odds = 0
@ last_odd = 0
@ is_odd = 0

foreach i (`seq 0 $up_to`)
  goto function_is_odd
  function_returned:
  if ($is_odd == 1) then
    @ sum += $i
    @ number_of_odds++
    @ last_odd = $i
  endif
  continue

  function_is_odd:
    @ remainder = $i % 2
    if ($remainder == 0) then
      @ is_odd = 0
    else
      @ is_odd = 1
    endif
    goto function_returned
end

@ noo2 = $number_of_odds * $number_of_odds
if ($sum == $noo2) then
  if ($number_of_odds == 0) then
    :
  else if ($number_of_odds < 7) then
    echo $sum
  else
    @ last_odd_1 = $last_odd - 1
    echo '1 + 3 + 5 + ... +' $last_odd_1 \
         '+' $last_odd '=' $sum
  endif
else
  echo 'Unexpected error:' $sum
endif
