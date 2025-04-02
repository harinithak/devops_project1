# Use the official Nginx image
FROM nginx:latest

# Copy all files from the root of the repository to Nginx's default serving location
COPY . /usr/share/nginx/html

# Expose port 80 (the default HTTP port)
EXPOSE 80

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]
