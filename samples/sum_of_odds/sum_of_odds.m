// sum_of_odds.m - calculate sum of odd integers

#import <Foundation/Foundation.h>
#import <Foundation/NSObject.h>

const CGFloat __version__ = 1.1;
const NSString *__date__ = @"2021-01-13";

const NSInteger up_to = 170;

@interface sum_of_odds: NSObject
{
  NSInteger sum, number_of_odds, last_odd;
  NSInteger i;
}
+ (BOOL) is_odd: (NSInteger)x;
- (id)init;
- (void) sum_up: (NSInteger)upto;
- (void) print_result;
@end

@implementation sum_of_odds: NSObject

+ (BOOL) is_odd: (NSInteger)x
{
  NSInteger remainder;

  remainder = x % 2;
  if (remainder == 0) return NO;
  else                return YES;
}

- (id)init
{
  [super init];
  sum = number_of_odds = last_odd = 0;
  return self;
}

- (void) sum_up: (NSInteger)x
{
  for (i = 0; i <= x; i++)
  {
    if ([sum_of_odds is_odd: i])
    {
      sum += i;
      number_of_odds++;
      last_odd = i;
    }
  }
}

- (void) print_result
{
  if (sum == pow(number_of_odds, 2))
  {
    if (number_of_odds == 0)
      ;
    else if (number_of_odds < 7)
      printf("%zd\n", sum);
    else
      printf("1 + 3 + 5 + ... + %zd + %zd = %zd\n",
          last_odd - 1, last_odd, sum);
  }
  else
    NSLog(@"Unexpected error: %zd\n", sum);
}

@end

int main(int argc, const char *argv[])
{
  id crunch;

  crunch = [[sum_of_odds alloc] init];
  [crunch sum_up: up_to];
  [crunch print_result];

  return EXIT_SUCCESS;
}
