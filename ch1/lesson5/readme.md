# Lesson 5: Read/Edit a file
In this lesson, we will go over how to read or edit a file on command line.

## Syntax
To access a filename, use <b>vi (filename)</b> to enter the editing mode on command line. You may add the directory along with the filename if the file is not located in the current directory. If the file does not exist, it will create a new file before entering the editing mode. You may add <b>-R</b> option to make the execution read-only. 

## Operation Mode
If the file is empty, you will see ~ on each line. Each ~ represents an unused line. To enter any text, first press i to enter Insert Mode. You will do any modifiction in the Insert Mode, including entering text or deleting text. To exit the Insert Mode, press <b>Esc</b> button on your keyboard.

## Exit the Editor
If you want to exit the editor, you may return to Operation Mode. If you are not sure which mode you are in, press press <b>Esc</b> button on your keyboard twice. You may press <b>:q</b> to exit. If you have made any modificiton, you will receive a warning and prevent you from exiting. To ignore this, in other words, ignore any changes and exit, press <b>:q!</b>. If you want to save the changes and exit, press <b>:wq</b>. Alternatively, you may press <b>:wq (filename)</b> to save the existing work to another file with another file name, aka save as.

## Operation Mode Hot Keys
When you are in Operation Mode, the table below is the hot keys to help you to edit the file. Note that it is case senitive.
<table>
	<tr>
		<th>Command</th>
		<th>Description</th>
	</tr>
	<tr>
		<td>i</td>
		<td>Insert texts before the current cursor location</td>
	</tr>
	<tr>
		<td>l</td>
		<td>Insert in beginning of the current line</td>
	</tr>
	<tr>
		<td>a</td>
		<td>Insert texts after the current cursor location</td>
	</tr>
	<tr>
		<td>A</td>
		<td>Insert texts before at the end of current line</td>
	</tr>
	<tr>
		<td>o</td>
		<td>Next line after the current cursor location</td>
	</tr>
	<tr>
		<td>O</td>
		<td>Next line before the current cursor location</td>
	</tr>
	<tr>
		<td>yy</td>
		<td>Copy the current line</td>
	</tr>
	<tr>
		<td>P</td>
		<td>Paste the copied text after the current cursor location</td>
	</tr>
</table>

## Exercise
Try to read the existing files <i>sample.txt</i>. Then change the existing text to <i>Hello World from SF!</i> and save with a different filename. <i>sample2.txt</i> is the solution for your reference.
