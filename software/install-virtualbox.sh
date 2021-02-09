#!/bin/bash

echo
echo "################################################################"
echo "  Installing Oracle VM VirtualBox                               "
echo "################################################################"
echo

if ! location=$(type -p "virtualbox"); then
    sudo apt install -y virtualbox
fi
