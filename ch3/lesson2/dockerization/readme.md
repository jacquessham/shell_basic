# Lesson 3.2.2 Dockerization
This lesson will go over how to write Docker image to dockerize your scripts, specifically how to create <b>Dockerfile</b>.
<br><br>
The lesson material originates from Docker and presented by Patrick Loeber.

## Basic of Workflow of Dockerizing your Python Script
<ul>
	<li>Prepare your Python script</li>
	<li>Create <b>Dockerfile</b> (With no extension)</li>
	<li>State the Image you import, ie, Python (<b>FROM python:3.9</b>)</li>
	<li>State the script, install the dependence, and run your script in the container</li>
	<li>Build your Image</li>
	<li>Run the Container</li>
</ul>
To access the scripts for the simple example of dockerized Python script, you may find it in the <a href="https://github.com/jacquessham/shell_basic/tree/main/ch3/lesson2/dockerization/ex1">Example 1</a> folder. If you would like to access the dockerized Python script for hosting virtual machine, you may find it in the <a href="https://github.com/jacquessham/shell_basic/tree/main/ch3/lesson2/dockerization/ex2">Example 2</a> folder. Note: The example are coming from Docker documentation presented by Patrick Loeber.

## Dockerfile Keywords
Here are some useful Dockerfile keywords:

<ul>
	<li>FROM: Importing another image for your image, such as <i>python</i>, but you must include at least one.</li>
	<li>WORKDIR: Change/Create directory</li>
	<li>ADD: Copy file or folder from your local directory to the container environment</li>
	<li>COPY: Copy file from your local directory to the container environment</li>
	<li>RUN: Execute a bash command, such as <i>echo</i>, <i>pip</i></li>
	<li>CMD: Execute a bash command with an array of arguements</li>
	<li>And more...</li>
</ul>

## Build your Image
You can run the following command to build your image.

```
docker build -t [Image_name]
```

Note that <i>-t</i> means name an optional tag, but this is very useful to include. Another useful option is <i>--rm</i> which removes intermediate containers after a successful build.

## Creating Port Explosure from Container Environment to Local Environment
If you are dockerizing a virtual server in the container environment, here is an example on how to create a port explosure from container environment to local environment when you execute on command line:

```
# Format for port setting is: -p [local_port]:[container_port]
docker run -h localhost -p 9002:9000 -d --name [container_name] [image_name]
```

In the code above, we have expose the server at port 9000 in the local environment. It means once we access port 9000 in the local environment, it would redirect us to the port 9002 in the container environment. You may choose any port number for the port explosure, but the port number in the container environment must be the same port number you stated in your script, ie, the port number declared in your script.

<br><br>
Note: Your virtual server must be hosted in <b>0.0.0.0</b> for the container to be explosed to the local environment.

## Reference
Docker - <a href="https://www.youtube.com/watch?v=0UG2x2iWerk&t=4s">How to containerize Python applications with Docker</a> by Patrick Loeber
<br><br>
Patrick Loeber's <a href="https://github.com/patrickloeber/python-docker-tutorial/blob/main/example2/.dockerignore">Tutorial repository</a> in Github