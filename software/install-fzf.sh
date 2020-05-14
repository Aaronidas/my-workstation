#!/bin/bash

echo
echo "################################################################"
echo "  Installing fzf                                                "
echo "################################################################"
echo

if ! location=$(type -p "fzf"); then
    sudo apt install -y fzf
fi
