#!/bin/sh
# SCRIPT: install.sh
# PURPOSE: Install the Themely cPanel/WHM plugin
# AUTHOR: Ishmael 'Hans' Desjarlais <ismaelyws@gmail.com>
clear
echo "-----------------------------------------------"
echo "Installing Themely cPanel/WHM Plugin"
echo "-----------------------------------------------"
# Create directory for cPanel plugin
if [ ! -d /usr/local/cpanel/base/frontend/paper_lantern/themely ]; then
	mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/themely
	chmod 755 /usr/local/cpanel/base/frontend/paper_lantern/themely
fi
# Create directory for WHM AppConfig file
if [ ! -d /var/cpanel/apps ]; then
	mkdir -p /var/cpanel/apps
	chmod 755 /var/cpanel/apps
fi
# Create directory for WHM plugin
if [ ! -d /usr/local/cpanel/whostmgr/docroot/templates/themely ]; then
	mkdir -p /usr/local/cpanel/whostmgr/docroot/templates/themely
	chmod 755 /usr/local/cpanel/whostmgr/docroot/templates/themely
fi
# Get archive file from repository & place in root directory
curl -s https://themely-cpanel.s3.amazonaws.com/themely-cpanel.tar.gz > /root/themely-cpanel.tar.gz
# Uncompress archive file
tar -zxvf themely-cpanel.tar.gz
# Move files to their respective directories
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
mv /root/themely.conf /usr/local/cpanel/whostmgr/docroot/templates/themely
mv /root/whm.php /usr/local/cpanel/whostmgr/docroot/templates/themely
# Install cPanel plugin
/usr/local/cpanel/scripts/install_plugin /usr/local/cpanel/base/frontend/paper_lantern/themely/themely.tar.gz
# Register WHM plugin with AppConfig
/usr/local/cpanel/bin/register_appconfig /usr/local/cpanel/whostmgr/docroot/templates/themely/themely.conf
# Remove installation files
rm themely-cpanel.tar.gz
rm install.sh
echo "------------------------------------"
echo "Themely successfully installed! Proceed to WHM > Plugins > Themely and enter your license key and authentication token to activate your server."
echo "------------------------------------"