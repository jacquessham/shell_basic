# Lesson 7: Difference

<b>diff</b> is useful to tell the difference between 2 files. The syntax is <b>diff (filename1) (filename2)</b>.

## Options
<table>
	<tr>
		<th>Option</th>
		<th>Description</th>
	</tr>
	<tr>
		<td>c</td>
		<td>Content. To view difference in context mode. In order words, return in better format to read</td>
	</tr>
	<tr>
		<td>u</td>
		<td>Unified mode. Similar to context mode except it does not display any redundant information</td>
	</tr>
	<tr>
		<td>i</td>
		<td>To make the command case insensitive. The content with different cases in both files are treated the same</td>
	</tr>
	<tr>
		<td>version</td>
		<td>Display the version of diff is running on your command line</td>
	</tr>
</table>

## Examples
A simple syntax to tell difference between <i>file1.txt</i> and <i>file2.txt</i>
```
diff file1.txt file2.txt
```
<br>
If you want the command to differate the files case insenitively, use
```
diff -i file1.txt file2.txt
```
