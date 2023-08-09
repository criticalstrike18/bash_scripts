#!/bin/bash

# Update the package list and install required packages
sudo apt update
sudo apt install -y openjdk-11-jdk

# Import the Jenkins GPG key to enable package verification
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

# Add the Jenkins repository to the package sources
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update the package list again to include the Jenkins repository
sudo apt update

# Install Jenkins
sudo apt install -y jenkins

# Start the Jenkins service
sudo systemctl start jenkins

# Enable Jenkins to start on system boot
sudo systemctl enable jenkins

# Wait for Jenkins to start (optional, but useful in some cases)
echo "Waiting for Jenkins to start..."
sleep 60

# Get the initial admin password and display it
echo "Jenkins initial admin password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
