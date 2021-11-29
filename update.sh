#!/bin/sh
# SCRIPT: update.sh
# PURPOSE: Update the Themely cPanel/WHM plugin
# AUTHOR: Ishmael 'Hans' Desjarlais <hans@themely.com>
clear
echo "-----------------------------------------------"
echo "Updating Themely cPanel/WHM Plugin"
echo "-----------------------------------------------"
# Check if directories exist
if [ -d /usr/local/cpanel/base/frontend/paper_lantern/themely ] && [ -d /usr/local/cpanel/whostmgr/docroot/templates/themely ]; then
	# Check if locale directories exist
	if [ ! -d /usr/local/cpanel/base/frontend/paper_lantern/themely/locale ]; then
		mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/themely/locale
		mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/es_ES
		mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/es_ES/LC_MESSAGES
		mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/fr_FR
		mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/fr_FR/LC_MESSAGES
		mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/ko_KR
		mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/ko_KR/LC_MESSAGES
		mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/pt_PT
		mkdir -p /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/pt_PT/LC_MESSAGES
		chmod 755 /usr/local/cpanel/base/frontend/paper_lantern/themely/locale
		chmod 755 /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/es_ES
		chmod 755 /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/es_ES/LC_MESSAGES
		chmod 755 /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/fr_FR
		chmod 755 /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/fr_FR/LC_MESSAGES
		chmod 755 /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/ko_KR
		chmod 755 /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/ko_KR/LC_MESSAGES
		chmod 755 /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/pt_PT
		chmod 755 /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/pt_PT/LC_MESSAGES
	fi
	# Get archive file from repository & place in root directory
	curl -s https://themely-cpanel.s3.amazonaws.com/archive.tgz > /root/archive.tgz
	# Uncompress archive file
	tar -zxvf archive.tgz
	# Move files to their respective directories
	mv /root/index.live.php /usr/local/cpanel/base/frontend/paper_lantern/themely
	mv /root/search.live.php /usr/local/cpanel/base/frontend/paper_lantern/themely
	mv /root/manager.live.php /usr/local/cpanel/base/frontend/paper_lantern/themely
	mv /root/classes.php /usr/local/cpanel/base/frontend/paper_lantern/themely
	mv /root/style.css /usr/local/cpanel/base/frontend/paper_lantern/themely
	mv /root/script.js /usr/local/cpanel/base/frontend/paper_lantern/themely
	mv /root/wordpress-logo.png /usr/local/cpanel/base/frontend/paper_lantern/themely
	mv /root/instructions.gif /usr/local/cpanel/base/frontend/paper_lantern/themely
	mv /root/LICENSE.md /usr/local/cpanel/base/frontend/paper_lantern/themely
	mv /root/es_ES.tgz /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/es_ES/LC_MESSAGES
	mv /root/fr_FR.tgz /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/fr_FR/LC_MESSAGES
	mv /root/ko_KR.tgz /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/ko_KR/LC_MESSAGES
	mv /root/pt_PT.tgz /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/pt_PT/LC_MESSAGES
	mv /root/themely.tar.gz /usr/local/cpanel/base/frontend/paper_lantern/themely
	mv /root/themely.conf /usr/local/cpanel/whostmgr/docroot/templates/themely
	mv /root/whm.php /usr/local/cpanel/whostmgr/docroot/templates/themely
	if [ ! -f /usr/local/cpanel/whostmgr/docroot/templates/themely/settings.json ]; then
		mv /root/settings.json /usr/local/cpanel/whostmgr/docroot/templates/themely
	else
		rm /root/settings.json
	fi
	# Uncompress locale zip files
	cd /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/es_ES/LC_MESSAGES
	tar -zxvf es_ES.tgz
	cd /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/fr_FR/LC_MESSAGES
	tar -zxvf fr_FR.tgz
	cd /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/ko_KR/LC_MESSAGES
	tar -zxvf ko_KR.tgz
	cd /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/pt_PT/LC_MESSAGES
	tar -zxvf pt_PT.tgz
	cd /root/
	# Reinstall cPanel plugin
	/usr/local/cpanel/scripts/install_plugin /usr/local/cpanel/base/frontend/paper_lantern/themely/themely.tar.gz --theme=paper_lantern
	# Remove installation files
	rm archive.tgz
	rm /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/es_ES/LC_MESSAGES/es_ES.tgz
	rm /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/fr_FR/LC_MESSAGES/fr_FR.tgz
	rm /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/ko_KR/LC_MESSAGES/ko_KR.tgz
	rm /usr/local/cpanel/base/frontend/paper_lantern/themely/locale/pt_PT/LC_MESSAGES/pt_PT.tgz
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