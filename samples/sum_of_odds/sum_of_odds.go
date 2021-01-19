// sum_of_odds.go - calculate sum of odd integers

package main

import (
  "os"
  "fmt"
  "math"
  "strconv"
)

const __version__ = 1.1;
const __date__ = "2021-01-19";

const up_to = 170

func is_odd(x int) bool {
  var remainder int

  remainder = x % 2
  if remainder == 0 {
    return false
  } else {
    return true
  }
}

func main() {
  var sum int = 0
  var number_of_odds int = 0
  last_odd := 0	// can omit int

  for i := 0; i <= up_to; i++ {
    if is_odd(i) {
      sum += i; number_of_odds++
      last_odd = i
    }
  }

  if float64(sum) == math.Pow(
         float64(number_of_odds), 2.0) {
    if (number_of_odds == 0) {	// do nothing
    } else if number_of_odds < 7 {
      fmt.Println(sum)
    } else {
      fmt.Println("1 + 3 + 5 + ... +",
          last_odd - 1, "+", last_odd, "=", sum)
    }
  } else {
    var message string
    message = "Unexpected error: " +
                  strconv.Itoa(sum) + "\n"
    os.Stderr.WriteString(message)
  }
}
