-- sum_of_odds.sql - calculate sum of odd integers

set @__version__ := 1.1;
set @__date__ := '2021-01-14';

set @up_to := 170;

create database if not exists sum_of_odds;
use sum_of_odds;

drop function if exists is_odd;
drop procedure if exists sum_of_odds;

delimiter //

create function is_odd(x int) returns boolean
begin
  set @remainder := mod(x, 2);
  if @remainder = 0 then return false;
  else                   return true;
  end if;
end //

create procedure sum_of_odds(in up_to int)
begin
  set @sum := 0;
  set @number_of_odds := 0;
  set @last_odd := 0;

  set @i := 0;
  counting: loop
    if is_odd(@i) then
      set @sum := @sum + @i;
      set @number_of_odds := @number_of_odds + 1;
      set @last_odd := @i;
    end if;
    if @i >= up_to then leave counting;
    else set @i := @i + 1;
    end if;
  end loop;

  if @sum = pow(@number_of_odds, 2) then
    if @number_of_odds = 0 then
      set @sum := 0;
    elseif @number_of_odds < 7 then
      select @sum;
    else
      set @output := concat('1 + 3 + 5 + ... + ',
              @last_odd - 1, ' + ', @last_odd, ' = ', @sum);
      select @output;
    end if;
  else
    set @warning := concat('Unexpected error: ', @sum);
    select @warning;
  end if;
end //

delimiter ;

call sum_of_odds(@up_to);

drop database sum_of_odds;
