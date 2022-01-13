# Lesson 2: Variables
There are three types of variables:
<ul>
	<li>Local Variables</li>
	<li>Environment Variables</li>
	<li>Shell Variables</li>
</ul>

## Basics
The syntax to define a variable is the same with most of the languages, variable equal to somethiing. Use <b>$</b> to access a variable, like below:

```
name="Jacques"
echo $name
```
<br>
<b>\*\*Note: You must not leave space between variable and equal sign, and also not between equal sign and the value</b>
<br><br>
You may use <b>readonly</b> to convert a variable to a read-only variable. Once you have convert a read-only variable, you are not able to convert back to normal state (At least in the best practice).
```
name="Jacques"
readonly name
```
<br>
<b>unset</b> can be used when you would like to unset or delete a variable. But note that you are not able to unset a read-only variable.
```
name="Jacques"
unset name
```

## Types of Variables
<table>
	<tr>
		<th>Variable</th>
		<th>Description</th>
	</tr>
	<tr>
		<td>Local Variables</td>
		<td>A variable live in the current shell session</td>
	</tr>
	<tr>
		<td>Environment Variables</td>
		<td>A global variable that can be access by any shell children session</td>
	</tr>
	<tr>
		<td>Shell Variables</td>
		<td>A special variable declared by shell to function properly, it can be either a local or environment variable</td>
	</tr>
</table>

## Example Script
The script <i>var.sh</i> would demostrate how to convert variable to readonly, delete a variable and show it is not possible to delete a readonly variable. The expected outcome is:
```
Jacques
var.sh: line 4: unset: fname: cannot unset: readonly variable
Sham

```
