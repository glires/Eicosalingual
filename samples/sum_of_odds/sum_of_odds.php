#!/usr/bin/env php
<?php

// sum_of_odds.php - calculate sum of odd integers

$__version__ = 1.1;
$__date__ = '2021-01-17';

$up_to = 170;

function is_odd($x)
{
  $remainder = $x % 2;
  if ($remainder == 0)
    return false;
  else
    return true;
}

$sum = 0;
$number_of_odds = 0;
$last_odd = 0;

for ($i = 0; $i <= $up_to; $i++)
{
  if (is_odd($i))
  {
    $sum += $i;
    $number_of_odds += 1;
    $last_odd = $i;
  }
}

if ($sum == $number_of_odds ** 2)
{
  if ($number_of_odds == 0)
    ;
  elseif ($number_of_odds < 7)
    print "$sum\n";
  else
    print '1 + 3 + 5 + ... + ' . (string)($last_odd - 1)
          . ' + ' . (string)$last_odd . ' = '
          . (string)$sum . "\n";
}
else
  fputs(STDERR, 'Unexpected error: ' . (string)$sum . "\n");

?>
