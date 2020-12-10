# AoC2020
https://adventofcode.com/

My approach is to use SQL as much as possible. I'll use views sometimes to make things easier to read.
I will use PL/SQL if I can't find a pure sql solution or start to lose my mind.
I load the test data into a table with columns (lineno number, xline varchar2(4000). 

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
I used "connect by" to keep state and walk through the program lines. The program had an infinite loop which is trivially handled by the "nocycle" clause.
-part 2
Programming through Cartesian joins. Debug a program by running hundreds of off-by-one variations!

-Day 9
