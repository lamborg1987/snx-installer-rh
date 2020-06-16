
# To have script anywhere, anytime, ever, everybody

mkdir temp && cd temp

# for linux 'amd64' architecture install those packages:
sudo apt-get install libx11-6:i386 libpam0g:i386 libstdc++5:i386 lib32z1 lib32ncurses5

# una version superior no siempre funciona wget https://vpnportal.aktifbank.com.tr/SNX/INSTALL/snx_install.sh --no-check-certificate
sudo sh snx_install.sh

wget https://starkers.keybase.pub/snx_install_linux30.sh?dl=1 -O snx_install.sh


cd .. && rm -rf temp/
