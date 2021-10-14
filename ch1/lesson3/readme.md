# Lesson 3: Pipes, Filter, Search, Sort, Zip
Shell allow you to chain multiple commands into one command using <b>pipe (\|)</b>, the output of the commands are called <b>Filter</b>.

## Search
The syntax <b>grep</b> means "globally search for a regular expression and print". You may pass any regex to the arguement for the command. Here are the options available for grep:

<table>
	<tr>
		<th>Options</th>
		<th>Description</th>
	</tr>
	<tr>
		<td>grep -v</td>
		<td>Prints all lines that do not match the regex pattern</td>
	</tr>
	<tr>
		<td>grep -n</td>
		<td>Count the number of lines that match the regex pattern and print the lines that match the regex pattern</td>
	</tr>
	<tr>
		<td>grep -l</td>
		<td>Show only the files that contains at least one line matches the regex pattern</td>
	</tr>
	<tr>
		<td>grep -c</td>
		<td>Count the number of lines that match the regex pattern </td>
	</tr>
	<tr>
		<td>grep -i</td>
		<td>Case insenitive</td>
	</tr>
</table>

<br>
Example:

```
grep -c "data" training_data.csv
```
## Sorting
Coming Soon...

## Zip
Coming Soon...

## Examples
Coming soon...