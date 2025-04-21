FROM debian:latest

# Install apt packages
RUN apt-get update -qq && apt-get install -y build-essential nodejs npm

# Create workspace
RUN mkdir /app
WORKDIR /app

# Copy app contents to container
COPY . .

RUN npm install
