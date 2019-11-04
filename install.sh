#!/bin/sh
# SCRIPT: install.sh
# PURPOSE: Install the One-Click WP Installer plugin into cPanel
# AUTHOR: Ishmael 'Hans' Desjarlais <ismaelyws@gmail.com>
# INSTALLATION INSTRUCTIONS:
# wget -N http://172.105.27.117/install.sh
# chmod 755 install.sh
# ./install.sh
clear
echo "-----------------------------------------------"
echo "Installing One-Click WP Installer cPanel Plugin"
echo "-----------------------------------------------"
# Create the directory for the plugin
mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/oneclick-wp-installer
# Get plugin files from repository
curl -s https://bitbucket.org/ismaelyws/themely/downloads/ocwpi.tar.gz > /root/ocwpi.tar.gz
# Uncompress the archive
tar xzf ocwpi.tar.gz
# Move files to /usr/local/cpanel/base/frontend/paper_lantern/oneclick-wp-installer directory
mv /root/index.live.php /usr/local/cpanel/base/frontend/paper_lantern/oneclick-wp-installer
mv /root/process.php /usr/local/cpanel/base/frontend/paper_lantern/oneclick-wp-installer
mv /root/search.php /usr/local/cpanel/base/frontend/paper_lantern/oneclick-wp-installer
mv /root/dbconfig.php /usr/local/cpanel/base/frontend/paper_lantern/oneclick-wp-installer
mv /root/style.css /usr/local/cpanel/base/frontend/paper_lantern/oneclick-wp-installer
mv /root/script.js /usr/local/cpanel/base/frontend/paper_lantern/oneclick-wp-installer
mv /root/wordpress-logo.png /usr/local/cpanel/base/frontend/paper_lantern/oneclick-wp-installer
mv /root/CHANGELOG.md /usr/local/cpanel/base/frontend/paper_lantern/oneclick-wp-installer
mv /root/LICENSE.md /usr/local/cpanel/base/frontend/paper_lantern/oneclick-wp-installer
mv /root/oneclick-wp-installer.tar.gz /usr/local/cpanel/base/frontend/paper_lantern/oneclick-wp-installer
# Install the plugin (which also places the png image in the proper location)
/usr/local/cpanel/scripts/install_plugin /usr/local/cpanel/base/frontend/paper_lantern/oneclick-wp-installer/oneclick-wp-installer.tar.gz
# Remove install.sh and ocwpi.tar.gz files from root directory
rm ocwpi.tar.gz
rm install.sh
echo "------------------------------------"
echo "Installation successfully completed!"
echo "------------------------------------"