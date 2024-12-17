# Dockerfile

# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Copy the custom Nginx config file and HTML files to the container
COPY nginx.conf /etc/nginx/nginx.conf
COPY html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
