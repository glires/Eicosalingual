/* sum_of_odds.ru - calculate sum of odd integers */

const __VERSION__: f32 = 0.1;
const __DATE__: &str = "2021-02-24";

const UP_TO: i32 = 170;

fn is_odd(x: i32) -> bool
{
  let remainder = x % 2;
  if remainder == 0  { false }
  else               { true }
}

fn main()
{
  let mut sum: i32 = 0;
  let mut number_of_odds: i32 = 0;
  let mut last_odd: i32 = 0;

  for i in 0..(UP_TO + 1)
  {
    if is_odd(i)
    {
      sum += i;
      number_of_odds += 1;
      last_odd = i;
    }
  }

  if sum == number_of_odds.pow(2)
  {
    if number_of_odds == 0
    { }
    else if number_of_odds < 7
    { println!("{}", sum) }
    else
    {
      println!("1 + 3 + 5 + ... + {} + {} = {}",
               last_odd - 1, last_odd, sum)
    }
  }
  else
  { eprintln!("Unexpected error: {}", sum) }
}
