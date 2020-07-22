#!/bin/sh
# SCRIPT: update.sh
# PURPOSE: Update the Themely cPanel/WHM plugin
# AUTHOR: Ishmael 'Hans' Desjarlais <ismaelyws@gmail.com>
clear
echo "-----------------------------------------------"
echo "Updating Themely cPanel/WHM Plugin"
echo "-----------------------------------------------"
# Check if directories exist
if [ -d /usr/local/cpanel/base/frontend/paper_lantern/themely ] && [ -d /usr/local/cpanel/whostmgr/docroot/templates/themely ]; then
	# Get archive file from repository & place in root directory
	curl -s https://themely-cpanel.s3.amazonaws.com/archive.tgz > /root/archive.tgz
	# Uncompress archive file
	tar -zxvf archive.tgz
	# Move files to their respective directories
	mv /root/index.live.php /usr/local/cpanel/base/frontend/paper_lantern/themely
	mv /root/search.live.php /usr/local/cpanel/base/frontend/paper_lantern/themely
	mv /root/classes.php /usr/local/cpanel/base/frontend/paper_lantern/themely
	mv /root/style.css /usr/local/cpanel/base/frontend/paper_lantern/themely
	mv /root/script.js /usr/local/cpanel/base/frontend/paper_lantern/themely
	mv /root/wordpress-logo.png /usr/local/cpanel/base/frontend/paper_lantern/themely
	mv /root/LICENSE.md /usr/local/cpanel/base/frontend/paper_lantern/themely
	mv /root/locale.tgz /usr/local/cpanel/base/frontend/paper_lantern/themely
	mv /root/themely.tar.gz /usr/local/cpanel/base/frontend/paper_lantern/themely
	mv /root/themely.conf /usr/local/cpanel/whostmgr/docroot/templates/themely
	mv /root/whm.php /usr/local/cpanel/whostmgr/docroot/templates/themely
	# Uncompress locale zip file
	tar -zxvf /usr/local/cpanel/base/frontend/paper_lantern/themely/locale.tgz
	# Re-install cPanel plugin
	/usr/local/cpanel/scripts/install_plugin /usr/local/cpanel/base/frontend/paper_lantern/themely/themely.tar.gz
	# Remove installation files
	rm archive.tgz
	rm /usr/local/cpanel/base/frontend/paper_lantern/themely/locale.tgz
	rm update.sh
	echo "------------------------------------"
	echo "Themely successfully updated!"
	echo "------------------------------------"
fi
if [ ! -d /usr/local/cpanel/base/frontend/paper_lantern/themely ] && [ ! -d /usr/local/cpanel/whostmgr/docroot/templates/themely ]; then
	echo "-----------------------------------------------"
	echo "Themely plugin not found, make sure you have successfully installed Themely before updating."
	echo "-----------------------------------------------"
fi