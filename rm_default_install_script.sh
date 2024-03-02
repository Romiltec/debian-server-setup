#!/bin/bash

# Ensure the script is run as root or with sudo
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# Update and Upgrade the System
echo "Updating and upgrading your system..."
apt-get update && apt-get upgrade -y

# Install Git, htop, and screen
echo "Installing Git, htop, and screen..."
apt-get install -y git htop screen

# Install dependencies for Node.js and building tools
echo "Installing dependencies..."
apt-get install -y curl build-essential

# Install Composer
echo "Installing Composer..."
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"

# Install WP-CLI
echo "Installing WP-CLI..."
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

# Install Node.js (Using NodeSource for latest versions)
echo "Installing Node.js..."
curl -sL https://deb.nodesource.com/setup_current.x | bash - # This installs the current version of Node.js
apt-get install -y nodejs

# Install n (Node version manager)
echo "Installing n (Node version manager)..."
npm install -g n

# Use n to install the latest stable version of Node.js
n stable

# Verify Node.js Installation
node -v
npm -v

# Install Yarn
echo "Installing Yarn..."
npm install --global yarn

# Install pnpm
echo "Installing pnpm..."
npm install -g pnpm

# Install Restic
echo "Installing Restic..."
apt-get install -y restic

# Update Restic to the latest version
echo "Updating Restic to the latest version..."
restic self-update

# Script End
echo "Installation of Composer, WP-CLI, Node.js, n, Yarn, pnpm, Restic, Git, htop, and screen is complete."
