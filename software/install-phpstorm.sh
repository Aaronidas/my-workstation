#!/bin/bash

echo
echo "################################################################"
echo "  Installing PhpStorm                                           "
echo "################################################################"
echo

if ! [ -a "/opt/PhpStorm-2019.2.3" ]; then
    SETUP_DIR="$(pwd)"
    cd /opt

    sudo apt install -y libcanberra-gtk-module

    sudo wget https://download-cf.jetbrains.com/webide/PhpStorm-2019.2.3.tar.gz
    sudo tar -xzf PhpStorm-2019.2.3.tar.gz
    sudo rm PhpStorm-2019.2.3.tar.gz
    sudo mv PhpStorm-192.6817.20 PhpStorm-2019.2.3

    sudo tee /usr/share/applications/jetbrains-phpstorm.desktop << EOF
    [Desktop Entry]
    Version=1.0
    Type=Application
    Name=PhpStorm
    Icon=/opt/PhpStorm-2019.2.3/bin/phpstorm.svg
    Exec="/opt/PhpStorm-2019.2.3/bin/phpstorm.sh"
    Commet=
    Categories=Development;
    Terminal=false
EOF

    cd ${SETUP_DIR}
fi
