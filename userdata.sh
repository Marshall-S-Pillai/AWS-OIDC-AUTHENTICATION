#!/bin/bash
set -e

# Update the package list and install Apache
sudo apt-get update -y
sudo apt-get install -y apache2

# Start and enable the Apache service
sudo systemctl start apache2
sudo systemctl enable apache2

# Add a basic index.html
echo "<h1>Welcome to my Terraform Deployed Web Server!</h1>" | sudo tee /var/www/html/index.html

echo "User data script completed successfully"
