#!/bin/bash
# Update the package list and install Apache
sudo apt update -y
sudo apt install -y apache2

# Start and enable the Apache service
sudo systemctl start apache2
sudo systemctl enable apache2  

# Add a basic index.html
echo "<h1>Welcome to my Terraform Deployed Web Server!</h1>" | sudo tee /var/www/html/index.html
