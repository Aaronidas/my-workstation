#!/bin/bash

echo
echo "################################################################"
echo "  Installing Z Shell + Oh My Zsh                                "
echo "################################################################"
echo

if ! package=$(dpkg-query --list | grep "fonts-powerline"); then
    sudo apt install -y fonts-powerline
fi

if ! location=$(type -p "zsh"); then
    sudo apt install -y zsh
fi

if ! location=$(type -p "toilet"); then
    sudo apt install -y toilet
fi

if ! [ -a "~/.zshrc" ]; then
    echo
    echo "+--------------------------------------------------------------+"
    echo "| Oh My Zsh will be installed, after installation it will      |"
    echo "|     appear inside the new shell.                             |"
    echo "| Type the 'exit' command to exit Z shell and                  |"
    echo "|     continue the installation                                |"
    echo "+--------------------------------------------------------------+"
    echo
    read -p "Press enter to continue"

    SETUP_DIR="$(pwd)"

    cd ~
    sh -c "$(wget -qO - https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    cd ~/.oh-my-zsh/custom/plugins
    git clone https://github.com/zsh-users/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

    cd ${SETUP_DIR}
fi
