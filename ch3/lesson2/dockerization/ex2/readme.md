# Example 2 - Create Virtual Server with Docker
In this example, we will go over how to create a virtual server with FastAPI and dockerize it.
<br><br>
The lesson material originates from Docker and presented by Patrick Loeber.

## Before You Started
You may first create a virtual environment and activate it with the following command:

```
# Create virtual environment
python3 -m venv venv
# Activate environment
. venv/bin/activate
```

<br>
Then, install all required dependence, such as FastAPI:

```
pip install fastapi uvicorn
```

## Workflow
The workflow will exactly the same, except you would have to prepare the program to host virtual server with FastAPI (Flask is an alternative). You may obtain the code from <a href="https://fastapi.tiangolo.com/#example">FastAPI's documentation page</a> and save as <i>main.py</i>. In this example, the code is saved under the <i>app</i> folder
<br><br>
Once it is done, you may try to run it locally with the following command:

```
uvicorn app.main:app
```

<br>
The arugement contains two parts: <b>app.main</b> means <i>./app/main.py</i> and <b>:app</b> means the FastAPI object declare in <i>main.py</i> Line 5.

<br><br>
Before creating a Dockerfile, we should export the list of Python dependence with the below command:

```
pip freeze > requirements.txt
```

<br><br>
Now, we will create a Dockerfile. In the Dockerfile, we will do the follow:
<ol>
	<li>Import a Python Image</li>
	<li>Create a new folder to store scripts and dependences</li>
	<li>Copy the script to the right directory</li>
	<li>Install the required dependence</li>
	<li>Run the application</li>
</ol>

<br>
The example and explanation of the Dockerfile:

```
# Import a Python Image
FROM python:3.9

# Create a new folder called "code" in the container (The directory in the container should be different with what you see locally)
WORKDIR /code

# Copy the requirements.txt to the right folder in the container
COPY ./requirements.txt /code/requirements.txt

# Install the required dependence in Python
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy the script and paste into the right directory in the container
COPY ./app /code/app

# Run the app
# **Note: You must specific the host and port, or else will fail
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "7998"]

```

<br><br>
After you have the Dockerfile, you may build the container with the below command:

```
docker build -t fastapi-tutorial .
```

And lastly, run the container:

```
docker run -p 7998:7998 -d --name my_fastapi fastapi-tutorial
```

## Files
You may find the following files in this folder:
<ul>
	<li>Dockerfile</li>
	<li>main.py (Under the <i>app</i> folder)</li>
	<li>requirements.txt</li>
	<li>.dockerignore</li>
</ul>

## Reference
Docker - <a href="https://www.youtube.com/watch?v=0UG2x2iWerk&t=4s">How to containerize Python applications with Docker</a> by Patrick Loeber
<br><br>
Patrick Loeber's <a href="https://github.com/patrickloeber/python-docker-tutorial/blob/main/example2/.dockerignore">Tutorial repository</a> in Github