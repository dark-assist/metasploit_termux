#!/bin/bash
clear
echo "METASPLOIT INSTALLER FOR TERMUX BY SANATANI-HACKER"
echo "Telegram: https://t.me/temuxhacking"
echo "Github: https://github.com/dark-assist"
sleep 2.5
echo "Updating Termux..."
apt update && apt upgrade -y
clear
echo "Installing Linux distribution manager..."
apt install proot-distro -y
clear
echo "Installing Ubuntu for better MSF support..."
pd install ubuntu
echo "Updating Ubuntu and installing dependencies..."
pd login ubuntu -- /bin/bash -c "apt update && apt install curl -y"
echo "Installing Metasploit..."
pd login ubuntu -- /bin/bash -c "curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > /tmp/msfinstall"
pd login ubuntu -- /bin/bash -c "chmod 755 /tmp/msfinstall && cd /tmp && ./msfinstall"
echo "Creating links for Metasploit commands..."
echo "pd login ubuntu -- /bin/bash -c msfconsole" > $PREFIX/bin/msfconsole
echo "pd login ubuntu -- /bin/bash -c msfvenom" > $PREFIX/bin/msfvenom
echo "pd login ubuntu -- /bin/bash -c msfdb" > $PREFIX/bin/msfdb
echo "pd login ubuntu -- /bin/bash -c msfrpcd" > $PREFIX/bin/msfrpcd
echo "pd login ubuntu -- /bin/bash -c msfd" > $PREFIX/bin/msfd
echo "pd login ubuntu -- /bin/bash -c msfrpc" > $PREFIX/bin/msfrpc
chmod +x $PREFIX/bin/msf*
clear
echo "Installation complete!"
echo "Thank you for using my repository."
sleep 2
echo "You can start Metasploit by running 'msfconsole'."
