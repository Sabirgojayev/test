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

# Copy the Redis configuration file to the correct location
# COPY redis.conf /path/to/conf/file

# Expose app port
EXPOSE 8080

# Expose port for redis
EXPOSE 6379

# Start Redis server and then run the app
CMD service redis-server start && python greet.py

# Start Redis server with the configuration file and then run the app
# CMD ["sh", "-c", "redis-server /path/to/conf/file & python greet.py"]
