# Use the official Node.js image as the base image
FROM node:20.11.0

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Expose port 4200 to the outside world
EXPOSE 4200

# Command to run the Angular application using ng serve
CMD ["npm", "run","start"]
