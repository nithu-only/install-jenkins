#!/bin/bash

# Add Jenkins repository
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import Jenkins GPG key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Upgrade all packages
sudo dnf upgrade -y

# Install required dependencies
sudo dnf install -y fontconfig java-21-openjdk

# Install Jenkins
sudo dnf install -y jenkins

# Reload systemd to recognize Jenkins service
sudo systemctl daemon-reload
