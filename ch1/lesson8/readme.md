# Lesson 8: Curl for Downloading/Uploading Data
You may use <b>curl</b> to download or upload data without user interaction. It supports protocols including HTTP, HTTPS, SCP, SFTP, and FTP.
<br>

## Options
<table>
	<tr>
		<th>Option</th>
		<th>Description</th>
	</tr>
	<tr>
		<td>o</td>
		<td>To save the result to a file</td>
	</tr>
	<tr>
		<td>0</td>
		<td>Same as -o, to save the result to a file</td>
	</tr>
	<tr>
		<td>I</td>
		<td>Get HTTP headers only</td>
	</tr>
	<tr>
		<td>L</td>
		<td>Follow any redirect until it reaches the final destination</td>
	</tr>
	<tr>
		<td>u</td>
		<td>Specify username and password to access a protected FTP server, separate by :</td>
	</tr>
	<tr>
		<td>T</td>
		<td>Specify a file to upload to a protected FTP server (Use -u to specify username and password)</td>
	</tr>
</table>

## Examples
Use the following command to obtain the Google homepage in HTML format on shell or to save to a HTML file:
```
# Display the Google homepage on shell
curl www.google.com
# Save it to a HTML file
curl -o google.html www.google.com
```
<br>
To upload a file to a FTP server
```
curl -T (filename) -u username:password (url of a FTP server)
```
