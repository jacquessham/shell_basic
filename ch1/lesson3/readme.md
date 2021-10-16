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
You may use <b>sort</b> to sort the line the content of a file. We can try to sort the content of the file <i>cities.txt</i> in this folder by the following command:

```
sort cities.txt
```
<br>
And the following is the text file content and the result after the command is executed:

```
Los Angeles, CA
Seattle, WA
Portland, OR
Portland, ME
San Francisco, CA
Sacramento, CA

Los Angeles, CA
Portland, ME
Portland, OR
Sacramento, CA
San Francisco, CA
Seattle, WA
```

<br>
You may use the following options for the command:

<table>
	<tr>
		<th>Options</th>
		<th>Description</th>
	</tr>
	<tr>
		<td>sort -n</td>
		<td>Sort numbers numerically instead of in string ([1 10 2] becomes [1 2 10])</td>
	</tr>
	<tr>
		<td>sort -r</td>
		<td>Sort in reverse order</td>
	</tr>
	<tr>
		<td>sort -f</td>
		<td>Sort uppercase and lowercase alphabetically, instead of ascii code (not Z > a)</td>
	</tr>
	<tr>
		<td>sort +(num)</td>
		<td>Ignore the first (num) fields when sorting</td>
	</tr>
</table>

## Pipes
You may chain multiple commands into one command using <b>pipe (\|)</b>, the output of the commands are called <b>Filter</b>. You may use <b>\></b> to convert the result to a file. For example, I want to save the list of files that contain the keyword "data" in the current directory with details, you may do this:

```
ls -l | grep "data" > filelist.txt
```