# Use an official Node.js runtime as the base image
FROM node:19-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the application dependencies in the container
RUN npm install

# Copy the application code to the container
COPY . .

# Set the version of the image
ENV APP_VERSION 1.1.0

# Specify the command to run when the container starts
CMD ["npm", "start"]
