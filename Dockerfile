# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy dependency files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project
COPY . .

# Build the React app
RUN npm run build

# Install 'serve' to serve static files
RUN npm install -g serve

# Expose port 80
EXPOSE 80

# Use serve to serve the build directory
CMD ["serve", "-s", "build", "-l", "80"]
