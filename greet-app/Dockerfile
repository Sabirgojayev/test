ARG USERNAME=flask
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Use an official Python runtime as a parent image
FROM python:3.11-slim-bookworm

# Install Python dependencies
RUN pip install --no-cache-dir flask redis

# Create the user
RUN useradd -u 1001 testuser

USER testuser
# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

CMD ["python", "app.py"]
