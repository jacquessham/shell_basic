# Chapter 2: Basic Scripting
## Lesson 1: Hello World!
Lesson 1 starts with <b>echo</b> and <b>read</b>. <i>echo</i> prints strings on screen, and <i>read</i> takes input from keyboards. When printing a variable in a string with <i>echo</i>, use <b>$</b> to indicate a variable in the string, and be sure to use double quotation for the string.
<br><br>
This lesson contains two files: <i>hello_world.sh</i> to print <i>Hello World!</i> with <b>echo</b>, and <i>name.sh</i>. <i>name.sh</i> will ask your name and print your name after you have entered. To run the script, put this on the command line:

```
sh hello_world.sh
```
<br><br>
You may find more detail in the <a href="https://github.com/jacquessham/shell_basic/tree/main/ch2/lesson1">Lesson 1 Folder</a>.

## Lesson 2: Variables
Declaring a variable in command line is the same as most of the language, but beware not to leave space between variable name, equal signs and the value. You can convert a variable to read-only variable using <b>readonly</b> or delete a variable using <b>unset</b>. Note that you are not able to delete a read-only variable. Below is the example to declare variables, convert a variable to read-only, and delete a variable:

```
fname='Jacques'
readonly fname
lname='Sham'
unset lname
```
<br><br>
You may find more detail in the <a href="https://github.com/jacquessham/shell_basic/tree/main/ch2/lesson2">Lesson 2 Folder</a>.

## Lesson 3: 
Coming Soon...