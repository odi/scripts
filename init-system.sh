#!/bin/sh

# activate xmonad
ln -s ~/etc/xmonad/xmonad.hs ~/.xmonad/xmonad.hs
ln -s ~/etc/xmonad/infoBarrc ~/.xmonad/infoBarrc

# activate nix-pkgs
# after that i can install all my userspace-apps with:
#   nix-env -f .nixpkgs/packs.nix -iA all
mkdir ~/.nixpkgs
ln -s ~/etc/nixos/user-packs.nix ~/.nixpkgs/packs.nix

# activate zsh
ln -s ~/etc/zshrc ~/.zshrc

# activate emacs
ln -s ~/etc/emacs/init.el ~/.emacs
ln -s ~/etc/emasc/gnus.el ~/.gnus.el
mkdir -p ~/.emacs.d/autosaves

# first mount secure stick!

# activate wiki
ln -s /mnt/secure/wiki ~/wiki

# activate ssh and authorizations
ln -s /mnt/secure/sec/ssh ~/.ssh
ln -s /mnt/secure/authinfo ~/.authinfo
