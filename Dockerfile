# Base image
FROM mcr.microsoft.com/devcontainers/universal:latest

# Install Python + Flask
RUN apt-get install -y python3 python3-pip \
    && pip3 install flask

# Install Node.js + Vue CLI
RUN apt-get update && apt-get install -y nodejs npm \
    && npm install -g @vue/cli
