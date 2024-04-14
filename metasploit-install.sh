#!/bin/bash
clear
echo "METASPLOIT INSTALLER FOR TERMUX BY SANATANI-HACKER"
echo "Telegram:-https://t.me/temuxhacking"
echo "Github:-https://github.com/dark-assist"
sleep 2.5
echo "Updating termux...."
apt update;yes|apt upgrade
clear
echo "Installing linux distribution manager"
apt install proot-distro -y
clear
echo "Installing Ubuntu for better MSF support"
pd install ubuntu
echo "updating Ubuntu"
pd login ubuntu -- /bin/bash -c "apt update"
pd login ubuntu -- /bin/bash -c "apt install curl && curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > /tmp/msfinstall"
pd login ubuntu -- /bin/bash -c "chmod 755 /tmp/msfinstall"
pd login ubuntu -- /bin/bash -c "cd /tmp && ./msfinstall"
clear
sleep 2
echo "Creating link for MSF"
echo "pd login ubuntu -- /bin/bash -c msfconsole" > $PREFIX/bin/msfconsole
echo "pd login ubuntu -- /bin/bash -c msfvenom" > $PREFIX/bin/msfvenom
echo "pd login ubuntu -- /bin/bash -c msfdb" > $PREFIX/bin/msfdb
echo "pd login ubuntu -- /bin/bash -c msfrpcd" > $PREFIX/bin/msfrpcd
echo "pd login ubuntu -- /bin/bash -c msfd" > $PREFIX/bin/msfd
echo "pd login ubuntu -- /bin/bash -c msfrpc" > $PREFIX/bin/msfrpc
chmod +x $PREFIX/bin/msf*
clear
echo "Thanks for using my repository"
sleep 2
echo "You can start metasploit by runing msfconsole"
