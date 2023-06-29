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
	<li>Build the Container</li>
	<li>Run the Container</li>
</ul>
To access the scripts for the simple example of dockerized Python script, you may find it in the <a href="https://github.com/jacquessham/shell_basic/tree/main/ch3/lesson2/dockerization/ex1">Example 1</a> folder. If you would like to access the dockerized Python script for hosting virtual machine, you may find it in the <a href="https://github.com/jacquessham/shell_basic/tree/main/ch3/lesson2/dockerization/ex2">Example 2</a> folder. Note: The example are coming from Docker documentation presented by Patrick Loeber.

## Reference
Docker - <a href="https://www.youtube.com/watch?v=0UG2x2iWerk&t=4s">How to containerize Python applications with Docker</a> by Patrick Loeber
<br><br>
Patrick Loeber's <a href="https://github.com/patrickloeber/python-docker-tutorial/blob/main/example2/.dockerignore">Tutorial repository</a> in Github