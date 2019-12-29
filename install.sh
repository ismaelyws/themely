#!/bin/sh
# SCRIPT: install.sh
# PURPOSE: Install the Themely plugin into cPanel
# AUTHOR: Ishmael 'Hans' Desjarlais <ismaelyws@gmail.com>
clear
echo "-----------------------------------------------"
echo "Installing Themely cPanel/WHM Plugin"
echo "-----------------------------------------------"
# Create the directories
mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/themely
mkdir -p /usr/local/cpanel/whostmgr/docroot/templates/themely
# Get archive file from repository
curl -s https://themely-cpanel.s3.amazonaws.com/themely-cpanel.tar.gz > /root/themely-cpanel.tar.gz
# Uncompress the archive
tar -zxvf themely-cpanel.tar.gz
# Move files to directory
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
mv /root/themely.conf /var/cpanel/apps/
mv /root/whm.php /usr/local/cpanel/whostmgr/docroot/templates/themely
# Install the plugin
/usr/local/cpanel/scripts/install_plugin /usr/local/cpanel/base/frontend/paper_lantern/themely/themely.tar.gz
/usr/local/cpanel/bin/register_appconfig /root/themely.conf
# Remove installation files
rm themely-cpanel.tar.gz
rm install.sh
rm themely.conf
echo "------------------------------------"
echo "Themely successfully installed!"
echo "------------------------------------"
echo "Now that Themely is successfully installed proceed to WHM > Plugins > Themely and enter your license key and authentication token to activate your server."
echo "------------------------------------"