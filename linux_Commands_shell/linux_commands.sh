#!/bin/bash
# List the contents of the home directory
ls ~ 

# Change the current directory to /var/log and list its contents
cd /var/log
ls

# Find and display the path to the bash executable
which bash

# Find the current shell
echo $0

cd ~
# Create a directory named linux_fundamentals in your home directory
mkdir linux_fundamentals

# Inside linux_fundamentals, create a subdirectory named scripts
mkdir linux_fundamentals/scripts

# Create an empty file named example.txt inside the linux_fundamentals directory
touch linux_fundamentals/example.txt

# Copy example.txt to the scripts directory
cp linux_fundamentals/example.txt linux_fundamentals/scripts/

# Move example.txt from linux_fundamentals to linux_fundamentals/backup
mkdir linux_fundamentals/backup 
mv linux_fundamentals/example.txt linux_fundamentals/backup/

# Change the permissions of example.txt
chmod 644 linux_fundamentals/backup/example.txt

# Verify the permission changes
ls -l linux_fundamentals/backup/example.txt

# Create a file named example.txt in your home directory
touch example.txt

#create a user named student
sudo useradd student

#create a group named students
sudo groupadd students

#have student_user be under the group students
sudo usermod -a -G students student


# Change the owner and group of example.txt to a user named student
sudo chown students:student example.txt

# Verify the changes
ls -l 

# Create a directory named project in your home directory
mkdir project

# Create a file named report.txt inside the project directory
touch project/report.txt

# Set the permissions of report.txt
chmod 644 project/report.txt

# Set the permissions of the project directory
chmod 755 project

# Verify the changes
ls -l project/report.txt

# Create a new user named developer with a specific home directory and shell
sudo useradd -m -d /home/developer_home -s /bin/sh developer

# Verify the new user's information
id developer

# Change the username of the user developer to devuser
sudo usermod -l devuser developer

# Add devuser to a group named devgroup
sudo usermod -aG devgroup devuser

# Set the password of devuser
sudo passwd devuser

# Verify the changes made to the user
id devuser

# Create a file named original.txt in your home directory
touch original.txt

# Create a symbolic link named softlink.txt pointing to original.txt
ln -s original.txt softlink.txt

# Verify the symbolic link
ls -l softlink.txt

# Delete the original file original.txt
rm original.txt

# Check the status of the symbolic link
ls -l softlink.txt

# Create a file named datafile.txt in your home directory
touch datafile.txt

# Create a hard link named hardlink.txt pointing to datafile.txt
ln datafile.txt hardlink.txt

# Verify the hard link
ls -l hardlink.txt

# Check the inode of both datafile.txt and hardlink.txt
ls -i datafile.txt hardlink.txt

# Delete the original file datafile.txt
rm datafile.txt

# Check the status of the hard link
ls -l hardlink.txt

# Find all .txt files in your home directory
find . -name "*.txt" #since current directory is home directory so . is used

# Update repo cache using apt
sudo apt update

# Install a package named tree
sudo apt-get install tree

#show directory structure using tree command
tree

#Install apt-transport-https and curl installed
sudo apt-get install apt-transport-https ca-certificates gnupg curl

#Import the Google Cloud public key.
#For newer distributions (Debian 9+ or Ubuntu 18.04+) run the following command
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg

#Add the gcloud CLI distribution URI as a package source.
#For newer distributions (Debian 9+ or Ubuntu 18.04+), run the following command
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

#Update and install the gcloud CLI
sudo apt-get update && sudo apt-get install google-cloud-cli