#!/bin/bash

echo
echo "################################################################"
echo "  Installing my dotfiles                                        "
echo "################################################################"
echo

if ! test -f ~/.dotfiles; then
  SETUP_DIR="$(pwd)"
  git clone https://github.com/Aaronidas/dotfiles.git ~/.dotfiles
  cd ~/.dotfiles
  sh ./install
  cd ${SETUP_DIR}
fi