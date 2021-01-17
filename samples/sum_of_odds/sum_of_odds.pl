#!/usr/bin/env perl

=head1 NAME
  sum_of_odds.pl - calculate sum of odd integers
=cut

use warnings;
use strict;
use English;

my $__version__ = 1.1;
my $__date__ = '2021-01-17';

my $up_to = 170;

sub is_odd
{
  my $x = $ARG[0];
  my $remainder = $x % 2;
  if ($remainder == 0) { return 0 }
  else                 { return 1 }
}

my $sum = 0;
my $number_of_odds = 0;
my $last_odd = 0;

for (my $i = 0; $i <= $up_to; $i++)
{
  if (&is_odd($i))
  {
    $sum += $i;
    $number_of_odds++;
    $last_odd = $i;
  }
}

if ($sum == $number_of_odds ** 2)
{
  if ($number_of_odds == 0) { ; }
  elsif ($number_of_odds < 7)
  { print $sum, "\n" }
  else
  { print '1 + 3 + 5 + ... + ', $last_odd - 1,
          ' + ', $last_odd, ' = ', $sum, "\n" }
}
else
{ print STDERR 'Unexpected error: ', $sum, "\n" }
