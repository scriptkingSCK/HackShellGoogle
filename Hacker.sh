#!/bin/bash
clear
echo -e "\e[4;31m HackGoogleShell !!! \e[0m"
echo -e "\e[1;34m ง๊วฟฟ \e[0m"
echo -e "\e[1;32m SCK \e[0m"
echo ""
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt update
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo DEBIAN_FRONTEND=noninteractive \
    apt install --assume-yes xfce4 desktop-base
echo ""
echo "sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'"
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'
sudo apt install --assume-yes xscreensaver
sudo apt install --assume-yes task-xfce-desktop
sudo systemctl disable lightdm.service
echo ""
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
echo ""
echo "กรุณาเปิดเว็บ https://remotedesktop.google.com/headless"
echo "เพิ่ออณุญาติ"
clear

