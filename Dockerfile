# Use an official Node.js runtime as the base image
FROM node:22

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose port 8080 to the outside world
EXPOSE 4321

# Command to run the application
CMD ["npm", "start"]
