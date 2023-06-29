# Dockerization
Coming soon...

## Basic of Workflow of Dockerizing your Python Script
<ul>
	<li>Prepare your Python script</li>
	<li>Create Dockerfile (With no extension)</li>
	<li>State the Image you import, ie, Python (<b>FROM python:3.9</b>)</li>
	<li>State the script, install the dependence, and run your script in the container</li>
	<li>Build the Container</li>
	<li>Run the Container</li>
</ul>
<br>
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
Then run the container:

```
docker run -d python-imdb
```

<b>Caution: The URL is forbiddened for the script to access, will update the script soon...</b>

## Reference
Docker - <a href="https://www.youtube.com/watch?v=0UG2x2iWerk&t=4s">How to containerize Python applications with Docker</a>