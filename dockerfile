# Use an official Nginx base image
FROM nginx:latest

# Copy the nginx.conf to the container's /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Copy index.html to the default Nginx html location
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
