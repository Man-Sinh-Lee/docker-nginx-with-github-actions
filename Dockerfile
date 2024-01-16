# Use the official Nginx Alpine image
FROM nginx:alpine

# Copy custom nginx.conf to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your static content (e.g., HTML files) to the container
COPY html /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the Nginx server
CMD ["nginx", "-g", "daemon off;"]
