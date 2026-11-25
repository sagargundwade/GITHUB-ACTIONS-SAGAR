FROM ubuntu:latest

# Update packages and install Apache2
RUN apt-get update && apt-get install -y apache2

# Copy index.html into Apache web root
COPY index.html /var/www/html/index.html

# Expose Apache port
EXPOSE 80

# Start Apache in foreground
CMD ["apachectl", "-D", "FOREGROUND"]