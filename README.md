# Debian Setup Script

This repository contains a Bash script designed to streamline the setup process on Debian systems, specifically targeting Debian 12. It automates the installation of several essential tools and software for developers and system administrators, including Composer, WP-CLI, Node.js, n (Node version manager), Yarn, pnpm, Restic, Git, htop, and screen.

## Software Included

- **Git**: A distributed version control system.
- **htop**: An interactive process viewer.
- **screen**: A full-screen window manager that multiplexes a physical terminal.
- **Composer**: A dependency manager for PHP.
- **WP-CLI**: The command-line interface for WordPress.
- **Node.js**: A JavaScript runtime built on Chrome's V8 JavaScript engine.
- **n**: Version manager for Node.js.
- **Yarn**: A fast, reliable, and secure dependency management tool for JavaScript.
- **pnpm**: An efficient package manager for JavaScript.
- **Restic**: A fast, secure, and efficient backup program.

## Prerequisites

Before running the installation script, ensure that:
- You have a Debian 12 system with internet access.
- You have root or sudo privileges on the system.

## Installation

To use the installation script on your Debian system, follow these steps:

1. **Download the Script**: You can directly download and execute the script using `wget`. Replace the URL with the actual URL of your script.

   ```bash
   # Using wget
   wget https://raw.githubusercontent.com/Romiltec/debian-server-setup/master/rm_default_install_script.sh

