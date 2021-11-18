#!/bin/sh

# Updating reference and updating packages
sudo apt update && sudo apt upgrade -y

# Installing VS Code with snap
sudo snap install code --classic

# Downloading and Installing Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Installing Git
sudo apt install git-all

# Removing Pre-Installed Games
sudo apt remove aisleriot gnome-mahjongg gnome-mines gnome-sudoku -y
sudo apt autoremove -y

# Font size
gsettings set org.gnome.desktop.interface text-scaling-factor 1.25

dconf write /org/gnome/shell/favorite-apps "['org.gnome.Nautilus.desktop', 'rhythmbox.desktop', 'libreoffice-writer.desktop', 'snap-store_ubuntu-software.desktop', 'org.gnome.Terminal.desktop', 'google-chrome.desktop', 'code_code.desktop']
"
