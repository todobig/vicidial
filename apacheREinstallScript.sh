#!/bin/bash

# Remove Apache2
echo "Removing Apache2..."
sudo zypper remove apache2

# Remove Apache2 Configuration Files
echo "Removing Apache2 configuration files..."
sudo rm -rf /etc/apache2

# Remove Apache2 Data
echo "Removing Apache2 data..."
sudo rm -rf /var/www
sudo rm -rf /var/log/apache2

# Reinstall Apache2
echo "Reinstalling Apache2..."
sudo zypper install apache2

# Start Apache2 Service
echo "Starting Apache2 service..."
sudo systemctl start apache2

# Enable Apache2 Service
echo "Enabling Apache2 service to start on boot..."
sudo systemctl enable apache2

echo "Apache2 reinstallation completed."
