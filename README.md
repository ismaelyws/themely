# Themely WordPress Installer

#### Themely is a cPanel/WHM addon which combines a one-click WordPress auto-installer with a directory of free WordPress themes from talented developers around the world.

![Themely cPanel Plugin](https://raw.githubusercontent.com/ismaelyws/themely/master/assets/themely-card.png)

## For Web Hosting Companies

- Offer your clients high-quality, free & secure WordPress themes from talented developers around the world.
- Beginner friendly, simple & fast WordPress auto-installer.
- Reduce WordPress related support tickets (we provide links to documentation & tutorials for WordPress).
- Security minded - we set secure default usernames, passwords and database table prefixes.
- Clear & intuitive cPanel icon & title (so users don't have to search or ask support techs where to install WordPress).
- We only approve themes to our directory that successfully pass our manual quality & security review process (we adhere to the official WordPress.org theme security guidelines).
- Only the latest, stable version of WordPress installed (the plugin downloads the latest version directly from the WordPress.org repository and doesn't modify any core files).
- WP admin single sign-on - after installation users can automatically sign into their Admin Dashboard.
- Integration with WHMCS (automatically install WordPress after account creation) - download hook file https://github.com/ismaelyws/themely-whmcs-hook
- Integration with cPanel WordPress Manager** (automatically detects & allows management of existing WordPress sites on an account)

***cPanel WordPress Manager**: The RPM-based WordPress cPAddon in WHM must be installed to access this feature (WHM >> Home >> cPanel >> Install cPAddons Site Software).*


## For WordPress Theme Developers

- Market your freemium* themes directly to your target audience (bypass Google, WordPress.org, ThemeForest & Mojo Marketplace).
- Guaranteed minimum number of daily downloads (avoid over-saturated & hyper-competitive marketplaces & directories).
- Proportional listing fees, billed monthly (based on a multiple of the amount you sell a theme upgrade).
- Cancel anytime, no contract, no cancellation fees (listing fees will be prorated by day, for example, if listing fees costs $200 a month but you cancel half way trough, we'll only charge you $100).
- Short review process** (less than 7 days compared to 10-14 days with ThemeForest.net & 3-5 months with WordPress.org)

***Freemium**: free with option to upgrade*

***Review process**: themes must successfully pass a manual quality & security review before being accepted into the directory. Only visually appealing, easy-to-use and secure themes are accepted.*


## Screenshots

![Themely cPanel Plugin](https://raw.githubusercontent.com/ismaelyws/themely/master/assets/themely-cpanel-screenshot-before.png)

![Themely cPanel Plugin](https://raw.githubusercontent.com/ismaelyws/themely/master/assets/themely-cpanel-screenshot-after.png)

![Themely WHM Plugin](https://raw.githubusercontent.com/ismaelyws/themely/master/assets/themely-whm-screenshot.png)


## Live Demo

We've set up a tiny cloud server with a cPanel license for you to try and test the plugin.

URL: https://li2000-228.members.linode.com/cpanel

Username: `wpthemespot`

Password: *Please [contact us](#get-helpsupport) to generate a secure password for you*.

Once logged in, scroll down to the **Software section** and click **Install WordPress**.

**Important Notice**: You will notice the directory only contains 21 themes at the moment. We're currently in the process of adding themes and it will gradually grow in number.

## System Requirements

A Linux server running CentOS 6 or 7 with a valid cPanel/WHM license. For information on cPanel/WHM system requirements visit https://documentation.cpanel.net/display/68Docs/Installation+Guide+-+System+Requirements


## Installation Instructions

To **install** the plugin follow the steps below:

### Step 1

[Generate a license key](https://plugin.themely.com/generate.php) (right click and open in new tab)

### Step 2

Run the following commands as root,

`wget -N https://raw.githubusercontent.com/ismaelyws/themely/master/install.sh`

`chmod 755 install.sh`

`./install.sh`

### Step 3

Navigate to *WHM > Plugins > Themely* and enter your license key, then press the green button to activate your server.


## Removal Instructions

To **uninstall** the plugin login to your server as root and run the following commands:

`wget -N https://raw.githubusercontent.com/ismaelyws/themely/master/uninstall.sh`

`chmod 755 uninstall.sh`

`./uninstall.sh`


## Update Instructions

To **update the plugin to the latest version** login to your server as root and run the following commands:

`wget -N https://raw.githubusercontent.com/ismaelyws/themely/master/update.sh`

`chmod 755 update.sh`

`./update.sh`


## Get Help/Support

Whether you're a hosting company or a theme developer, we're here to help. If it's to get assistance with our plugin/service or to suggest new features; we're here to listen.

**Here's how you can reach us:**

[Create new issue on Github](https://github.com/ismaelyws/themely/issues) (click the green **New Issue** button)

[Chat with us on Discord](https://discord.gg/f3m2Pmp)

Send an email to `hans@themely.com`

Call or text on Whatsapp `+1 (514) 883-0132`

Time Zone: Eastern Standard Time (GMT -4)

Spoken & written languages: English, Français, Español (un poquito)

Office Location: Montreal, Canada