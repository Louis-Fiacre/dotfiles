#!/bin/bash

function i {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt-get install $1
  else
    echo "Already installed: ${1}"
  fi
}

sudo apt update && sudo apt full-upgrade -y

i build-essential
i git
i wget
i tmux # term multi manager
i vim # editor
i ncdu # storage manager
i htop # process manager or bpytop
i neofetch # cli-pc info

i vlc # audio video reader

# libre office 
i libreoffice-writer
i libreoffice-calc
i libreoffice-impress
# libreoffice french addons
i libreoffice-l10n-fr
i libreoffice-help-fr
i hyphen-fr


i firefox # navigateur 

# Get all upgrades
sudo apt upgrade -y
sudo apt autoremove -y
