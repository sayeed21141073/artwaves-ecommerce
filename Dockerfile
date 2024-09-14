# Using Node.js 16 as the base image
FROM node:16

# Set the working directory in the container to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Installing the project dependencies listed in package.json, including 'concurrently' as a dev dependency
RUN npm install concurrently --save-dev

# Copying the entire project directory from the host to the container’s /app directory
COPY . .

# Building the React project
RUN npm run build

# Exposing port 4001 to allow traffic to the app
EXPOSE 4001

# Defining the command to start the app
CMD ["npm", "start"]
