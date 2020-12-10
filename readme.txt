# AoC2020
https://adventofcode.com/

My approach is to use SQL as much as possible. I'll use views sometimes to make things easier to read.
I will use PL/SQL if I can't find a pure sql solution or start to lose my mind.
I load the test data into a table with columns (lineno number, xline varchar2(4000). 

I was hooked when the puzzle for the first day let me write a sql statement that basically said "hey Oracle, give me the answer".
Part 1 - "where a.a+b.a = 2020"
Part 2 - "where a.a+b.a+c.a = 2020"
That's magic.
The rest of the puzzles have been a lot more work. I don't think sql is Turing complete and I've had to do a lot of thinking and research to fake it.
Magic still happens sometimes. Do the heavy lifting and then get to a where clause, "hey Oracle, what IS the answer?" "where b.sum_to_here - a.sum_to_here = 25918798". 
Poof. Done.


Hightlights by day:

-Day 1
Cartesian joins win the day.

-Day 2
Hiding the initial parse logic behind a view helps a lot.
The regex family of functions are powerful. Is it cheating? 

-Day 3
-part 1
Easy! Yet, six days later and I'm not sure how it works. Maybe I should comment these things.
-part 2
Take part 1 and run it with four other parameters. One parameter has you skipping every other row. A simple change. My solution is complex and horrible but at least it works.
Also, Oracle has an aggregate function for addition, sum(), but not multiplication. That was an interesting problem.

-Day 4
-part 1
The input file has "passports" where the passport span multiple lines and they are separated by an empty line. I couldn't figure out a way in sql to join them together. I spent far too long researching it. The pl/sql procedure was trivial.
-part 2
I'm not interested in this puzzle. I may come back to it later.

-Day 5
-part 1
Easy problem. My solution depended on converting a binary number in text into a number. Like bintohex() or to_number('00101','format?') or similar. There is no such thing.
I finally wrote a function. In anger.
-part 2
Used lag() to find a row that doesn't exist.

-Day 6
-part 1
Uses "connect by" and recursive subqueries. Did a lot of research but became distracted by Day 8! The research came in very handy.
I expect I'll come back to this one.

-Day 7
Distracted by Day 8.

-Day 8
-part 1
Run programs using sql!
I used "connect by" to keep state and walk through the program lines. The program had an infinite loop which is trivially handled by the "nocycle" clause. Couldn't have done it without the research from Day 6.
-part 2
Programming through Cartesian joins. Debug a program by running hundreds of off-by-one variations!

-Day 9
"I am large, I contain Cartesian joins." -- Walt Whitman, known for pushing the boundary on BigO computation.
-part 1
Yet another Cartesian join.
These are programming puzzles and assume, at a basic level, one can save state in variables between statements. That's a lot harder to do in a single sql statement.
One way I'm getting around the issue is by brute forcing the solution using Cartesian joins and then filtering out the answer.
-part 2
Similar to the first but with a little math trick too. Fun.



