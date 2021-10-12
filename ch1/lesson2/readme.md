# Lesson 2: File Management
There are 3 basic types of files:
<ul>
	<li>Ordinary Files, like csv, txt, json files</li>
	<li>Directories (Folders)</li>
	<li>Special Files, files to access hardwares like hard drives, modems, and Ehernet adapters</li>
</ul>
Here are the common commands for file management:
<table>
	<tr>
		<th>Command</th>
		<th>Description</th>
		<th>Example</th>
	</tr>
	<tr>
		<td>ls</td>
		<td>Listing </td>
		<td></td>
	</tr>
	<tr>
		<td>vi (File Name)</td>
		<td>Access to files</td>
		<td>vi trainingdata.csv</td>
	</tr>
	<tr>
		<td>cat (File Name)</td>
		<td>Display content of a file</td>
		<td>cat trainingdata.csv</td>
	</tr>
	<tr>
		<td>wc (File Name)</td>
		<td>Counting words in a file</td>
		<td>wc summary.txt</td>
	</tr>
	<tr>
		<td>cp (File Name)</td>
		<td>Copy a file</td>
		<td>cp trainingdata.csv</td>
	</tr>
	<tr>
		<td>mv (Old File Name) (New File Name)</td>
		<td>Rename a file</td>
		<td>mv trainingdata.csv trainingX.csv</td>
	</tr>
	<tr>
		<td>rm (File Name)</td>
		<td>Delete a File</td>
		<td>rm trainigX.csv</td>
	</tr>
</table>

## List
<table>
	<tr>
		<th>Options</th>
		<th>Description</th>
	</tr>
	<tr>
		<td>ls</td>
		<td>No option</td>
	</tr>
	<tr>
		<td>ls -l</td>
		<td>Get more infomation about the listed files including permission, file size, created or modified date and time, directory name</td>
	</tr>
	<tr>
		<td>ls -a</td>
		<td>To show hidden files</td>
	</tr>
</table>

<br>
You may use * or ? as meta characters when using <i>ls</i>, for example:

```
ls *data.csv
```

<br>
And it will show the following file names in the current directory:

```
trainingdata.csv	testingdata.csv		unuseddata.csv
```
## View a File
When execute <i>vi (filename)</i>, it will enter edit mode and you may start editing the file. Press <b>esc</b> to exit the editing mode. 

## Display the Content of a File
<table>
	<tr>
		<th>Options</th>
		<th>Description</th>
	</tr>
	<tr>
		<td>cat</td>
		<td>No option</td>
	</tr>
	<tr>
		<td>cat -b</td>
		<td>Display line numbers</td>
	</tr>
</table>

## Word Count of a File
When exectuor <i>wc (filename)</i>, it will display the following information in the following order:
<ol>
	<li>Total number of lines</li>
	<li>Total number of words</li>
	<li>The size in bytes</li>
	<li>Filename</li>
</ol>

## Copy a File
Once you have executed the command <i>cp (filename) (new_filename)</i>, it will copy the original file and paste in the directory provided with the name in the command. Below is the examples of copying a file and paste into the same directory and different directory:
```
cp trainingdata.csv trainingdata_copy.csv
```
```
cp trainingdata.csv Backup/trainingdata_copy.csv
```


