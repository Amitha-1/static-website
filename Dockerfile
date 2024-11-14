# Use the official Nginx image to serve the static website
FROM nginx:alpine

# Copy the static website files to the Nginx directory
COPY . /usr/share/nginx/html

# Expose port 80 for the Nginx server
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
