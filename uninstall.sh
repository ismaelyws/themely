#!/bin/sh
# SCRIPT: uninstall.sh
# PURPOSE: Remove the Themely cPanel/WHM plugin
# AUTHOR: Ishmael 'Hans' Desjarlais <hans@themely.com>
clear
echo "-------------------------------------------------"
echo "Removing the Themely cPanel/WHM Plugin"
echo "-------------------------------------------------"
# Unregister the plugins
/usr/local/cpanel/scripts/uninstall_plugin /usr/local/cpanel/base/frontend/paper_lantern/themely/themely.tar.gz
/usr/local/cpanel/bin/unregister_appconfig /var/cpanel/apps/themely.conf
# Remove the plugin folders & files
rm -rf /usr/local/cpanel/base/frontend/paper_lantern/themely
rm -rf /usr/local/cpanel/whostmgr/docroot/templates/themely
# Remove the cronjob file
if [ -f /etc/cron.daily/themelycron ]; then
	rm /etc/cron.daily/themelycron
fi
# Remove the uninstall.sh file from root directory
rm uninstall.sh
echo "----------------------------"
echo "Themely successfully removed!"
echo "----------------------------"