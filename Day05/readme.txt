Day05

Today's puzzle boils down to binary strings. From part1:
The first 7 characters will either be F or B; these specify exactly one of the 128 rows on the plane (numbered 0 through 127).
Each letter tells you which half of a region the given seat is in. Start with the whole list of rows; 
the first letter indicates whether the seat is in the front (0 through 63) or the back (64 through 127).
The next letter indicates which half of that region the seat is in, and so on until you're left with exactly one row.

Oracle doesn't have a binary string to number function. I find that absurd, so I wrote an absurd implementation.
create_binary_string_to_number.sql

Part1 and part2 solutions are in solution1.txt and solution2.txt, respectively. Hopefully the comments in the files are useful.
