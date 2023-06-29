# Example 1 - Dockerize a Python Script
In this folder, you may find the script on how to dockerize a Python script. The instruction may be found in the <a href="https://github.com/jacquessham/shell_basic/tree/main/ch3/lesson2/dockerization">Lesson 3.2.2</a> folder
<br><br>
The lesson material originates from Docker and presented by Patrick Loeber.

## Example of Dockerfile
Example of the Dockerfile:

```
# Dockerfile, Image, Container
FROM python:3.9 # State the Image you import

ADD main.py . # Add - Action to add a Python script; what script, and the directory you are going to save in the container. In this case is . which means the current directory

RUN pip install request beautifulsoup4 # Pip install the Python dependence like you do on your command line

CMD ["python", "./main.py"] # CMD - Execute the Bash command. In this case: Run Python with the given directory, stated in an array
```

<br>
Once you have the Dockerfile prepared, you may run the command to build your Docker Image:

```
docker build -t python-imdb .
```
<br>
Note: <b>python-imdb</b> is the image name, <b>.</b> is specifing the Dockerfile location.
<br><br>
Then run the container:

```
docker run -d python-imdb
```

<b>Caution: The URL is forbiddened for the script to access, it will not able to return the proper outcome. But it is still able to showcase how to Dockerize a Python script.</b> You should able to receive a message stating the request is not successful, instead of an error message.

## Files
You may find the following files in this folder:
<ul>
	<li>Dockerfile</li>
	<li>main.py</li>
	<li>.dockerignore</li>
</ul>