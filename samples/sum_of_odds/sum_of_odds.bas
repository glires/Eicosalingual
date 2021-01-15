rem sum_of_odds.bas - calculate sum of odd integers

let __version__ = 1.1
let __date__$ = "2021-01-15"

let up_to = 170

let sum = 0
let number_of_odds = 0
let last_odd = 0

for i = 0 to up_to step 1
  if is_odd(i) = 1 then
    let sum = sum + i
    let number_of_odds = number_of_odds + 1
    let last_odd = i
  end if
next

let noo2 = number_of_odds * number_of_odds
if sum = noo2 then
  if number_of_odds = 0 then
  elseif number_of_odds < 7 then
    print sum
  else
    let last_odd_1 = last_odd - 1
    print "1 + 3 + 5 + ... +"; last_odd;
    print " +"; last_odd; " ="; sum
  end if
else
  print "Unexpected error:"; sum
end if

end

function is_odd(x)
  let remainder = x MOD 2
  if remainder = 0 then
    let return_value = 0
  else
    let return_value = 1
  end if
  let is_odd = return_value
end function
