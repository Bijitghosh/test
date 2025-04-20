# Use an official Ubuntu base image
FROM ubuntu:20.04

# Disable interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install Apache
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy custom HTML (optional)
# COPY ./index.html /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache in foreground
CMD ["apachectl", "-D", "FOREGROUND"]
