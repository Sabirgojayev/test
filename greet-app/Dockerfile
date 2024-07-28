ARG USERNAME=flask
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Use an official Python runtime as a parent image
FROM python:3.6-slim

# Create the user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && apt-get update \
    && apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME
# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir flask redis

# Expose app port
EXPOSE 8080

ENV REDIS_HOST='localhost'
ENV REDIS_PORT=6379

CMD ["python", "app.py"]
