#!/bin/bash
#run with root user
# need put file libstdc++.so.5.0.7 in /root
uservpn="username"
servervpn="ipserver"

cd /root

wget ftp://ftp.pbone.net/mirror/ftp.scientificlinux.org/linux/scientific/7.0/x86_64/os/Packages/compat-libstdc++-33-3.2.3-71.el7.x86_64.rpm 
wget https://starkers.keybase.pub/snx_install_linux30.sh?dl=1 -O snx_install.sh
# lastest version, it doesn't always work # wget https://vpnportal.aktifbank.com.tr/SNX/INSTALL/snx_install.sh --no-check-certificate

#install de packet 
#    Xterm.86_64 (with libXaw.86_64 dependency)
#    libX11.i686
#    pam-devel.i686 (which contains: libaudit.so.1, libcrack.so.2, lindb-4.8.so, libselinux.so.1, libpam.so.0)
#    libstdc++.so.5
#    libnsl.i686

yum install -y xterm
yum install -y libX11.i686
yum install -y pam-devel.i686
yum install -y libstdc++.i686
yum install -y libnsl.i686 
rpm -i compat-libstdc++-33-3.2.3-71.el7.x86_64.rpm
cp libstdc++.so.5.0.7 /usr/lib/
ln -s /usr/lib/libstdc++.so.5.0.7 /usr/lib/libstdc++.so.5

# create config file 
echo "
server $ipserver
username $uservpn
reauth yes
debug yes" > /root/.snxrc

./snx_install.sh

#for run snx with root exectute "snx" and for disconnet run "snx -d"


