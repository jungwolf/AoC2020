/*
This function translates a binary number stored as string into a number.
It generates a sql statement using bin_to_num(...).
"select bin_to_num( ... ) from dual"
It uses the replace() function to change 'N' to ',N' necessary to make them parameters
It then removes the first character since it is always ','.
Finally, it runs the new sql statement and returns the results.
*/

create or replace function binary_string_to_number(bin varchar2) return number as
  bin_to_num_sql varchar2(64);
  x number;
begin
  bin_to_num_sql:=replace(bin, '1' ,',1');
  bin_to_num_sql:=replace(bin_to_num_sql, '0', ',0');
  bin_to_num_sql:='select bin_to_num('||substr(bin_to_num_sql, 2 )||') from dual';
  execute immediate bin_to_num_sql into x;
  return x;
end;
/

/* But.. why?
Oracle doesn't have a native way to translate binary strings as text into numbers. Hex, yes, binary, no.
Oracle's lack of a native solution seems short-sighted considering it offers bit level operations on numbers.

The standard way to solve this problem is loop over the string adding powers of 2.
But--
Oracle has a function that takes N single 0/1 parameters and returns the decimal number
examples:
select bin_to_num(1) from dual; -> 1
select bin_to_num(1,0) from dual; -> 2
select bin_to_num(0,1,1) from dual; -> 3

Variable number of parameters but not a string?

That's absurd. I decided to write an absurd solution.
*/
