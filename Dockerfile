# Use an official Python runtime as a parent image
FROM python:3.6-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir flask redis

# Install Redis server
RUN apt-get update && apt-get install -y redis-server

EXPOSE 8080

# Start Redis server and then run the app
CMD service redis-server start && python greet.py
