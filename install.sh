#!/bin/sh
# SCRIPT: install.sh
# PURPOSE: Install the Themely plugin into cPanel
# AUTHOR: Ishmael 'Hans' Desjarlais <ismaelyws@gmail.com>
clear
echo "-----------------------------------------------"
echo "Installing Themely cPanel Plugin"
echo "-----------------------------------------------"
# Create the directory for the plugin
mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/themely
# Get plugin files from repository
curl -s http://172.105.14.14/themely-cpanel.tar.gz > /root/themely-cpanel.tar.gz
# Uncompress the archive
tar xzf themely-cpanel.tar.gz
# Move files to /usr/local/cpanel/base/frontend/paper_lantern/themely directory
mv /root/index.live.php /usr/local/cpanel/base/frontend/paper_lantern/themely
mv /root/search.live.php /usr/local/cpanel/base/frontend/paper_lantern/themely
mv /root/classes.php /usr/local/cpanel/base/frontend/paper_lantern/themely
mv /root/config.ini /usr/local/cpanel/base/frontend/paper_lantern/themely
mv /root/style.css /usr/local/cpanel/base/frontend/paper_lantern/themely
mv /root/script.js /usr/local/cpanel/base/frontend/paper_lantern/themely
mv /root/wordpress-logo.png /usr/local/cpanel/base/frontend/paper_lantern/themely
mv /root/CHANGELOG.md /usr/local/cpanel/base/frontend/paper_lantern/themely
mv /root/LICENSE.md /usr/local/cpanel/base/frontend/paper_lantern/themely
mv /root/themely.tar.gz /usr/local/cpanel/base/frontend/paper_lantern/themely
# Install the plugin (which also places the png image in the proper location)
/usr/local/cpanel/scripts/install_plugin /usr/local/cpanel/base/frontend/paper_lantern/themely/themely.tar.gz
# Remove install.sh and themely-cpanel.tar.gz files from root directory
rm themely-cpanel.tar.gz
rm install.sh
echo "------------------------------------"
echo "Installation successfully completed!"
echo "------------------------------------"