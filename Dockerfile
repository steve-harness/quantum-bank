# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

COPY ./requirements.txt .
RUN pip3 install --requirement ./requirements.txt
COPY . .

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run server.py
RUN python3 server.py