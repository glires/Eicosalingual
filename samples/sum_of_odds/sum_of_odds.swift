// sum_of_odds.swift - calculate sum of odd integers

import Foundation

let __version__: Float = 1.1
let __date__: String = "2021-01-19"

let up_to: Int = 170

func is_odd(intnumber x: Int) -> Bool
{
  var remainder: Int

  remainder = x % 2
  if (remainder == 0) { return false }
  else                { return true }
}

var sum: Int = 0
var number_of_odds: Int = 0
var last_odd = 0	// can omit Int

for i in 0...up_to
{
  if (is_odd(intnumber: i))
  {
    sum += i
    number_of_odds += 1
    last_odd = i
  }
}

if (sum == Int(pow(Double(number_of_odds), 2.0)))
{
  if (number_of_odds == 0) { }
  else if (number_of_odds < 7) { print(sum) }
  else
  {
    let last_odd_1: Int = last_odd - 1
    print("1 + 3 + 5 + ... + ", terminator: "")
    print("\(last_odd_1) + ", terminator: "")
    print("\(last_odd) = \(sum)")
  }
}
else
{ NSLog("Unexpected error: \(sum)") }
