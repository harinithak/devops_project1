# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project into the container
COPY . .

# Set environment variables
ENV NODE_OPTIONS=--openssl-legacy-provider
ENV HOST=0.0.0.0

# Expose the port your app runs on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
