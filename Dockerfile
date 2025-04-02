# Use the official Nginx image
FROM nginx:latest

# Copy the built files from the build directory to Nginx's default serving location
COPY build/ /usr/share/nginx/html

# Expose port 80 (the default HTTP port)
EXPOSE 80

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]
