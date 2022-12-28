# Lesson 4: Loop
Like many programing language, shell offers loops to iterate elements within an Array. The available loops in Bash are:
<ul>
	<li>While Loop</li>
	<li>For Loop</li>
	<li>Util Loop</li>
	<li>Select Loop</li>
</ul>

## While Loop
The syntax looks like this:
<br>
```
while command1 ; # this is loop1, the outer loop
do
   Statement(s) to be executed if command1 is true

   while command2 ; # this is loop2, the inner loop
   do
      Statement(s) to be executed if command2 is true
   done

   Statement(s) to be executed if command1 is true
done
```

A simple example with one loop is something like this:
<br>
```
a = 0
while [ "$a" -lt 10 ]
do
	echo "$a"
	a=`expr $a + 1`
done
```
<br>
Note: <b>You need to space in between brackets [ ]</b>, if not, it will become syntax error.

<br><br>
Coming soon...