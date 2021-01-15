program sum_of_odds

! sum_of_odds.f90 - calculate sum of odd integers

  implicit none

  real :: version__ = 1.1
  character(10) :: date__ = "2021-01-15"

  integer, parameter :: up_to = 170

  integer :: sum = 0
  integer :: number_of_odds = 0
  integer :: last_odd = 0
  integer i

  do i = 0, up_to
    if (is_odd(i) .eqv. .TRUE.) then
      sum = sum + i
      number_of_odds = number_of_odds + 1
      last_odd = i
    end if
  end do

  if (sum == number_of_odds ** 2) then
    if (number_of_odds == 0) then
      continue
    else if (number_of_odds < 7) then
      print '(i0)', sum
    else
      print '("1 + 3 + 5 + ... + ", i0, " + ", i0, &
          & " = ", i0)', last_odd - 1, last_odd, sum
    end if
  else
    write(0, '(a, i0)'), 'Unexpected error: ', sum
    write(0, '(f3.1)'), version__
    write(0, '(a)'), date__
  end if

  stop

contains

logical function is_odd(x)
  implicit none

  integer x, remainder

  remainder = mod(x, 2)
  if (remainder == 0) then
    is_odd = .FALSE.
  else
    is_odd = .TRUE.
  end if

end function

end
