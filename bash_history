sudo raspi-config
sudo apt-get update && sudo apt-get -y dist-upgrade
sudo apt-get install git lightdm x11-server-utils unclutter lxde vim
git clone https://github.com/philcrump/principia-ariss-pi-dashboard.git dashboard/
cd dashboard/
sudo dpkg -i libgcrypt11_1.5.3-2ubuntu4.2_armhf.deb
sudo dpkg -i chromium-codecs-ffmpeg-extra_48.0.2564.82-0ubuntu0.14.04.1.1108_armhf.deb 
sudo dpkg -i chromium-browser_48.0.2564.82-0ubuntu0.14.04.1.1108_armhf.deb 
sudo apt-get install -f
sudo dpkg -i chromium-browser_48.0.2564.82-0ubuntu0.14.04.1.1108_armhf.deb 
cp boot-config.txt /boot/config.txt
cp etc-rc.local /etc/rc.local
cp home-pi-.config-lxsession-LXDE-autostart ~/.config/lxsession/LXDE/autostart
sudo reboot
