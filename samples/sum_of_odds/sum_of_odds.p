program sum_of_odds(output);

{ sum_of_odds.p - calculate sum of odd integers }

const __version__ = 1.1;
const __date__ = '2021-01-15';

const up_to = 170;

var sum, number_of_odds, last_odd, i, j: integer;

function is_odd(var x: integer): Boolean;
  var remainder: integer;

  begin
    remainder := x mod 2;
    if remainder = 0 then is_odd := false
    else                  is_odd := true
  end;

begin
  sum := 0;
  number_of_odds := 0;
  last_odd := 0;

  for i := 0 to up_to do
    begin
      j := i;
      if is_odd(j) then
        begin
          sum := sum + j;
          number_of_odds := number_of_odds + 1;
          last_odd := j;
        end
    end;

  if sum = number_of_odds * number_of_odds then
    if number_of_odds = 0 then
      { do nothing }
    else if number_of_odds < 7 then
      write(sum)
    else
      writeln('1 + 3 + 5 + ... + ', last_odd - 1,
          ' + ', last_odd, ' = ', sum)
  else
    writeln(stderr, 'Unexpected error: ', sum);
end.
