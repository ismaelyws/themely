# Themely WordPress Auto-Installer & Theme Directory

#### Themely is a cPanel addon which combines a one-click WordPress auto-installer with a directory of free WordPress themes from talented developers around the world. Not only is it free, it pays you each month!

#### My mission is to help web hosting companies & WordPress theme developers make more money.

***I'm currently looking for hosting companies to beta test Themely and get valuable feedback. If you're interested please [contact me](#get-helpsupport).***


## For Web Hosting Companies

- Earn monthly recurring revenue* (based on number of active accounts)
- Offer your clients hundreds of free, beautiful & secure WordPress themes from talented developers around the world.
- Beginner friendly, simple & fast WordPress auto-installer.
- Reduce WordPress related support tickets (we provide links to documentation & tutorials for WordPress).
- Security minded - we set secure default usernames, passwords and database table prefixes.
- Clear & intuitive cPanel icon & title (so users don't have to search or ask support techs where to install WordPress).
- We only approve themes to our directory that successfully pass our manual quality & security review process (we adhere to the official WordPress.org theme security guidelines).
- Only the latest, stable version of WordPress installed (the plugin downloads the latest version directly from the WordPress.org repository and doesn't modify any core files).
- WP admin single sign-on - after installation users can automatically sign into their Admin Dashboard.
- Integration with WHMCS (automatically install WordPress after account creation) - download hook file https://github.com/ismaelyws/themely-whmcs-hook
- Integration with cPanel WordPress Manager** (automatically detects & allows management of existing WordPress sites on an account)

***Revenue**: A fixed amount (TBD) per active cPanel account.*

***cPanel WordPress Manager**: The RPM-based WordPress cPAddon in WHM must be installed to access this feature (WHM >> Home >> cPanel >> Install cPAddons Site Software).*

## For WordPress Theme Developers

- Market your freemium* themes directly to your target audience (bypass Google, WordPress.org, ThemeForest & Mojo Marketplace).
- Guaranteed minimum number of daily downloads (avoid over-saturated & hyper-competitive marketplaces & directories).
- Proportional listing fees, billed monthly (based on a multiple of the amount you sell a theme upgrade).
- Cancel anytime, no contract, no cancellation fees (listing fees will be prorated by day, for example, if listing fees costs $200 a month but you cancel half way trough, we'll only charge you $100).
- Short review process** (less than 7 days compared to 10-14 days with ThemeForest.net & 3-5 months with WordPress.org)

***Freemium**: free with option to upgrade*

***Review process**: themes must successfully pass a manual quality & security review before being accepted into the directory. Only visually appealing, easy-to-use and secure themes are accepted.*

## Screenshot

![Themely cPanel Plugin](https://raw.githubusercontent.com/ismaelyws/themely/master/assets/themely-cpanel-screenshot.png)


## Live Demo

I've set up a tiny cloud server with a cPanel license for you to try and test the plugin.

URL: https://li2000-228.members.linode.com/cpanel

Username: `wpthemespot`

Password: `Ty6LI87tLSDC9EnFvu`

Once logged in, scroll down to the **Software section** and click **Install WordPress**.

**Important Notice**: The Themely cPanel plugin is currently in public BETA and still under development, you will notice the directory only contains 12 themes at the moment. I'm currently in the process of adding themes and it will grow in number.


## System Requirements

A Linux server running CentOS 6 or 7 with a valid cPanel/WHM license. For information on cPanel/WHM system requirements visit https://documentation.cpanel.net/display/68Docs/Installation+Guide+-+System+Requirements



## Installation Instructions

To **install** the plugin login to your server as root and run the following commands:

`wget -N https://raw.githubusercontent.com/ismaelyws/themely/master/install.sh`

`chmod 755 install.sh`

`./install.sh`


## Removal Instructions

To **uninstall** the plugin login to your server as root and run the following commands:

`wget -N https://raw.githubusercontent.com/ismaelyws/themely/master/uninstall.sh`

`chmod 755 uninstall.sh`

`./uninstall.sh`


## Get Help/Support

Hi! My name is Hans Desjarlais and I'm the founder & creator of Themely. Whether you're a hosting company or a theme developer, I'm your primary point of contact. If it's to get assistance with my plugin/service or to suggest new features; I'm here to listen.

**Here's how you can reach me:**

[Create new issue on Github](https://github.com/ismaelyws/themely/issues) (click the green **New Issue** button)

[Chat with me on Discord](https://discord.gg/f3m2Pmp)

[Send me a direct message on Twitter](https://twitter.com/messages/compose?recipient_id=ismaelyws)

Call or text me on Whatsapp `+1 (514) 883-0132`

Time Zone: Eastern Standard Time (GMT -4)