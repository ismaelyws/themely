#!/bin/sh
# SCRIPT: uninstall.sh
# PURPOSE: Remove the Themely plugin from cPanel
# AUTHOR: Ishmael 'Hans' Desjarlais <ismaelyws@gmail.com>
# REMOVAL INSTRUCTIONS:
# wget -N https://bitbucket.org/ismaelyws/themely/raw/a142d3dc3d9999e4d092fdb4fecdebe39427f473/uninstall.sh
# chmod 755 uninstall.sh
# ./uninstall.sh
clear
echo "-------------------------------------------------"
echo "Removing the Themely cPanel Plugin"
echo "-------------------------------------------------"
# Unregister the plugin
/usr/local/cpanel/scripts/uninstall_plugin /usr/local/cpanel/base/frontend/paper_lantern/themely/themely.tar.gz --theme=paper_lantern
# Remove the plugin folder & files
rm -rf /usr/local/cpanel/base/frontend/paper_lantern/themely
# Remove the uninstall.sh file from root directory
rm uninstall.sh
echo "----------------------------"
echo "Plugin successfully removed!"
echo "----------------------------"