#!/bin/bash

echo
echo "################################################################"
echo "  Installing SmartGit                                           "
echo "################################################################"
echo

if ! [ -a "/usr/share/smartgit" ]; then
    wget -O /tmp/smartgit-18_2_8.deb https://www.syntevo.com/downloads/smartgit/smartgit-18_2_8.deb
    sudo dpkg -i /tmp/smartgit-18_2_8.deb
    rm /tmp/smartgit-18_2_8.deb
fi
