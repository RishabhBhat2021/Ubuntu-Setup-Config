#!/bin/sh

# Updating reference and updating packages
sudo apt update && sudo apt upgrade -y

# Installing VS Code with snap
sudo snap install code --classic

# Downloading and Installing Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Removing Pre-Installed Games
sudo apt remove aisleriot gnome-mahjongg gnome-mines gnome-sudoku -y
sudo apt autoremove -y

# Large Text - Accessibilty (increses font size) 
# gsettings set org.gnome.desktop.interface text-scaling-factor 1.25

# Adding App Icons to the Dock
dconf write /org/gnome/shell/favorite-apps "['org.gnome.Nautilus.desktop', 'snap-store_ubuntu-software.desktop', 'google-chrome.desktop', 'org.gnome.Terminal.desktop', 'code_code.desktop']"

# Enabling Dark Theme
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-dark'

# Clock setting for Dual Boot, UTC to Local
timedatectl set-local-rtc 1
