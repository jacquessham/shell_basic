# Lesson 6: Network Troubleshooting
We go over the functions for network troubleshooting in this lesson, including the following:
<ul>
	<li>ping</li>
	<li>telnet</li>
	<li>nc</li>
</ul>

## ping
<b>ping</b> is the simplest way to check whether a specific port is in service or not available. If you can reach the destination, then you will get a respond that means the specific port is working. If you don't, it means the specific port is not working. The syntax is:
```
ping <(Options)> <IP Address> <(Port Number)>
```
<br>
An example is
```
ping www.amazon.com
```
or 

```
ping xxx.xx.xx.xxx xxxx
```
where <i>xxx.xx.xx.xxx</i> and <i>xxxx</i> represents an IP address and port number.
<br><br>
The list of useful options:
<table>
	<tr>
		<th>Options</th>
		<th>Description</th>
	</tr>
	<tr>
		<td>t</td>
		<td>Ping until stopped</td>
	</tr>
	<tr>
		<td>a</td>
		<td>Resolve addresses to hostnames</td>
	</tr>
	<tr>
		<td>n (number)</td>
		<td>Set the number of echo requests to send</td>
	</tr>
	<tr>
		<td>4</td>
		<td>Force using IPv4</td>
	</tr>
	<tr>
		<td>6</td>
		<td>Force using IPv6</td>
	</tr>
</table>

<br>
<b>ping</b> is the simplest way to test whether a server or a port is working or not, sometimes you may not getting a reponse because of a preventation from a firewall. You may have to turn off the firewall to allow ping's messages to go through.

## talnet
Alternatively, you may use <b>talnet</b> to test the server or a port connection. The syntax is:
```
telnet <(Options)> <IP Address> <(Port Number)>
```
Likewise, telnet will notify you whether the connection is successful or not.

## telcat
<b>talnet</b> depreciated after macOS High Sierra (10.3), you may use <b>nc</b> (netcat) instead. The syntax is:

```
nc <(Options)> <IP Address> <(Port Number)>
```
The list of useful options:
<table>
	<tr>
		<th>Options</th>
		<th>Description</th>
	</tr>
	<tr>
		<td>v</td>
		<td>Give more verbose output (More info provided)</td>
	</tr>
	<tr>
		<td>z</td>
		<td>Just scan for listening daemons, and don't send any data to them</td>
	</tr>
	<tr>
		<td>i (number)</td>
		<td>Declare a delay time interval between signals to be sent</td>
	</tr>
	<tr>
		<td>4</td>
		<td>Force using IPv4</td>
	</tr>
	<tr>
		<td>6</td>
		<td>Force using IPv6</td>
	</tr>
</table>

<br>
The suggested options to be used every time is <b>-vz</b> as the optimally you don't need to send any data to the destination but to test whether the port or the server is working. The example is:

```
nc -vz xxx.xx.xx.xxx xxxx
```

The expected output is:
```
Connection to xxx.xx.xx.xxxx port xxxx [tcp/afs3-prserver] succeeded!
```

The connection is refused or timed out when you see the following either outputs:
```
Connection to xxx.xx.xx.xxxx port xxxx (tcp) failed: Operation timed out
Connection to xxx.xx.xx.xxxx port xxxx (tcp) failed: Connection refused
```
