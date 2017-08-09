# Use an official Python runtime as a parent image
FROM python:3.5-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

RUN export DEBIAN_FRONTEND=noninteractive
RUN echo "mysql-server mysql-server/root_password password password" | debconf-set-selections
RUN echo "mysql-server mysql-server/root_password_again password password" | debconf-set-selections
RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get install -y mysql-server
RUN apt-get install -y libmysqlclient-dev

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Run app.py when the container launches
WORKDIR "docker"
CMD ["../start.sh"]
