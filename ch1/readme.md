# Chapter 1: Basic Commands

## Lesson 1: Directories
Here are the common commands for directories:
<table>
	<tr>
		<th>Command</th>
		<th>Description</th>
		<th>Example</th>
	</tr>
	<tr>
		<td>pwd</td>
		<td>Determine current directory</td>
		<td></td>
	</tr>
	<tr>
		<td>cd ~</td>
		<td>Chnage to home directory</td>
		<td></td>
	</tr>
	<tr>
		<td>cd -</td>
		<td>Change to last directory</td>
		<td></td>
	</tr>
	<tr>
		<td>cd /</td>
		<td>Change to pathname</td>
		<td>cd Desktop/data</td>
	</tr>
	<tr>
		<td>cd .. (cd ../..)</td>
		<td>Change to parent directory (Change to grandparent directory)</td>
		<td></td>
	</tr>
	<tr>
		<td>ls</td>
		<td>Listing Directories</td>
		<td></td>
	</tr>
	<tr>
		<td>mkdir (New Directory)</td>
		<td>Create Directory</td>
		<td>mkdir Data</td>
	</tr>
	<tr>
		<td>mkdir (New Directory 1) (New Directory 2)</td>
		<td>Create 2 Directory, each new directory is separated by space</td>
		<td>mkdir Data Data2</td>
	</tr>
	<tr>
		<td>mkdir -p /(Parent Directory)/(New Directory)</td>
		<td>Create parent directory and new directory while parent directory does not exist</td>
		<td>mkdir -p /Data/RawData</td>
	</tr>
	<tr>
		<td>rmdir (Directory)</td>
		<td>Remove a directory</td>
		<td>rmdir Data</td>
	</tr>
	<tr>
		<td>mv (Old Directory) (New Directory)</td>
		<td>Rename a directory</td>
		<td>mv Data2 TrainingData</td>
	</tr>
</table>

## Lesson 2: File Management
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

<br><br>
You may find more detail in the <a href="https://github.com/jacquessham/shell_basic/tree/main/ch1/lesson2">Lesson 2 Folder</a>.

## Lesson 3: Pipes, Filter, Search, Sort
Shell allow you to chain multiple commands into one command using <b>pipe (\|)</b>, the output of the commands are called <b>Filter</b>. You may use <b>\></b> to convert the result to a file.
<br>
Use <b>grep</b> to search a file(s) that match a certain pattern. You may use <b>sort</b> to sort the output of the lines of a command result.

A example of all those commands in one command is such:
```
ls  | grep "data" | sort > fileslist.txt
```

There are a lot of options available to search and sort, you may find more detail and standalone examples in the <a href="https://github.com/jacquessham/shell_basic/tree/main/ch1/lesson3">Lesson 3 Folder</a>.

## Lesson 4: Preocessing
Every time you execute a command, you can run it in <i>Foreground Processes</i> or <i>Background Process</i>. This lesson we will go over how to list running processes, stop processes and beyond using the following command:

<ul>
	<li>&</li>
	<li>ps</li>
	<li>kill</li>
	<li>top</li>
</ul>

You may find more detail in the <a href="https://github.com/jacquessham/shell_basic/tree/main/ch1/lesson4">Lesson 4 Folder</a>.

## Lesson 5: Read/Edit a file
In this lesson, we will go over how to read or edit a file on command line. You use <b>vi (filename)</b> to open the file and enter to Operation Mode of the command line editor to edit the file. Type <b>i</b> to enter Insert Mode to edit and press <b>Esc</b> to return to Operation Mode. Once you are done, type <b>:q</b> to exit the file editor.

You may find more detail in the <a href="https://github.com/jacquessham/shell_basic/tree/main/ch1/lesson5">Lesson 5 Folder</a>.

## Lesson 6: Network Troubleshooting
You may use <b>ping</b> and <b>telnet</b> to test on a network. <b>talnet</b> depreciated after macOS High Sierra (10.3), you may use <b>nc</b> (netcat) instead.

You may find more detail in the <a href="https://github.com/jacquessham/shell_basic/tree/main/ch1/lesson6">Lesson 6 Folder</a>.

## Reference
Tutorialspoint: <a href="https://www.tutorialspoint.com/unix/index.htm">link</a>