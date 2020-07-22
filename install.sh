#!/bin/sh
# SCRIPT: install.sh
# PURPOSE: Install the Themely cPanel/WHM plugin
# AUTHOR: Ishmael 'Hans' Desjarlais <ismaelyws@gmail.com>
clear
if [ ! -d /usr/local/cpanel ]; then
	echo "------------------------------------"
	echo "cPanel/WHM is not installed on your server."
	echo "------------------------------------"
	exit 0
fi
echo "-----------------------------------------------"
echo "Installing Themely cPanel/WHM Plugin"
echo "-----------------------------------------------"
# Create directory for cPanel plugin
if [ ! -d /usr/local/cpanel/base/frontend/paper_lantern/themely ]; then
	mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/themely
	mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/themely/locale
	mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/es_ES
	mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/es_ES/LC_MESSAGES
	mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/fr_FR
	mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/fr_FR/LC_MESSAGES
	chmod 755 /usr/local/cpanel/base/frontend/paper_lantern/themely
	chmod 755 /usr/local/cpanel/base/frontend/paper_lantern/themely/locale
	chmod 755 /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/es_ES
	chmod 755 /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/es_ES/LC_MESSAGES
	chmod 755 /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/fr_FR
	chmod 755 /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/fr_FR/LC_MESSAGES
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
curl -s https://themely-cpanel.s3.amazonaws.com/archive.tgz > /root/archive.tgz
# Uncompress archive zip file
tar -zxvf archive.tgz
# Move files to their respective directories
mv /root/index.live.php /usr/local/cpanel/base/frontend/paper_lantern/themely
mv /root/search.live.php /usr/local/cpanel/base/frontend/paper_lantern/themely
mv /root/classes.php /usr/local/cpanel/base/frontend/paper_lantern/themely
mv /root/style.css /usr/local/cpanel/base/frontend/paper_lantern/themely
mv /root/script.js /usr/local/cpanel/base/frontend/paper_lantern/themely
mv /root/wordpress-logo.png /usr/local/cpanel/base/frontend/paper_lantern/themely
mv /root/LICENSE.md /usr/local/cpanel/base/frontend/paper_lantern/themely
mv /root/es_ES.tgz /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/es_ES/LC_MESSAGES
mv /root/fr_FR.tgz /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/fr_FR/LC_MESSAGES
mv /root/themely.tar.gz /usr/local/cpanel/base/frontend/paper_lantern/themely
mv /root/themely.conf /usr/local/cpanel/whostmgr/docroot/templates/themely
mv /root/whm.php /usr/local/cpanel/whostmgr/docroot/templates/themely
# Uncompress locale zip files
cd /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/es_ES/LC_MESSAGES
tar -zxvf es_ES.tgz
cd /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/fr_FR/LC_MESSAGES
tar -zxvf fr_FR.tgz
cd /root/
# Install cPanel plugin
/usr/local/cpanel/scripts/install_plugin /usr/local/cpanel/base/frontend/paper_lantern/themely/themely.tar.gz
# Register WHM plugin with AppConfig
/usr/local/cpanel/bin/register_appconfig /usr/local/cpanel/whostmgr/docroot/templates/themely/themely.conf
# Remove installation files
rm archive.tgz
rm /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/es_ES/LC_MESSAGES/es_ES.tgz
rm /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/fr_FR/LC_MESSAGES/fr_FR.tgz
rm update.sh
echo "------------------------------------"
echo "Themely successfully installed! Proceed to WHM > Plugins > Themely and enter your license key to activate the server."
echo "------------------------------------"
exit 0