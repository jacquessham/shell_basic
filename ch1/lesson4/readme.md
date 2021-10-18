# Lesson 4: Preocessing
Every time you execute a command, you can run it in <i>Foreground Processes</i> or <i>Background Process</i>. This lesson we will go over how to list running processes, stop processes and beyond using the following command:

<ul>
	<li>&</li>
	<li>ps</li>
	<li>kill</li>
	<li>top</li>
</ul>

## Foreground Process vs Background Process
Every process runs in the foreground process by default. In foreground process, all inputs are received by keyboard that is time-consuiming. At the same time, no other commands may be run in the same process because you have to wait until the command completes its execution and exit in order to run the next command. In the other hand, background process runs in background and you may run other commands without waiting the previous command has completed. In order to initiate background process, add an <b>&</b> at the end of the command. For example, if you want to run a Python script in the background we can do the following:

```
python predict.py &
```
<br>
Once the command to run the Python script, it will show you the job number and job status in the background process. If the background process require any keyboard input, it will stop and move back to foreground process until the input is received.

## Listing Running Process
To list the processes which are running currently, use <b>ps</b>. Below are the options you may add:

<table>
	<tr>
		<th>Options</th>
		<th>Description</th>
	</tr>
	<tr>
		<td>ps</td>
		<td>No option, default display of running process list</td>
	</tr>
	<tr>
		<td>ps -f</td>
		<td>Full details, including User ID (UID), Process ID (PID), Parent process ID (PPID), CPU utilization(C), Start time (STIME), Terminal type (TTY), CPU time taken (TIME), Command Executed this process (CMD)</td>
	</tr>
	<tr>
		<td>ps -a</td>
		<td>Show info about all users</td>
	</tr>
	<tr>
		<td>ps -x</td>
		<td>Show info about processes which are not ran by terminals</td>
	</tr>
</table>

## Stopping Processes
For foreground process, you may exit it by pressing CTRL+C. If a command is running in the background and you would like to end it, use <b>kill (PID)</b> to end it. If the command was ignored, use <b>kill -9 (PID)</b>.

## Information on Current Processes
If you want to see the statisitics of CPI utilization of all the process currently running in your machine, you may use <b>top</b> to view it. It will show you information about physical memory, virtual memory, CPU usage, and processes running. To exit, simply press <b>q</b> to return.
