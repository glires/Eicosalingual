// sum_of_odds.html - calculate sum of odd integers

const __version__ = 1.1;
const __date__ = '2021-01-18';

const up_to = 170;

function is_odd(x)
{
  let remainder = x % 2;
  if (remainder == 0) return false;
  else                return true;
}

let sum = 0;
let number_of_odds = 0;
let last_odd = 0;

for (let i = 0; i <= up_to; i++)
{
  if (is_odd(i))
  {
    sum += i;
    number_of_odds++;
    last_odd = i;
  }
}

if (sum == Math.pow(number_of_odds, 2))
{
  if (number_of_odds == 0)
    ;
  else if (number_of_odds < 7)
    process.stdout.write(sum + "\n");
  else
    process.stdout.write('1 + 3 + 5 + ... + '
        + (last_odd - 1) + ' + ' + last_odd
        + ' = ' + sum + "\n");
}
else
  process.stderr.write('Unexpected error: ' + sum + "\n");
