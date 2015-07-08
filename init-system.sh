#!/bin/sh

# activate xmonad
ln -s ~/etc/xmonad/xmonad.hs ~/.xmonad/xmonad.hs
ln -s ~/etc/xmonad/infoBarrc ~/.xmonad/infoBarrc

# activate nix-pkgs
# after that i can install all my userspace-apps with:
#   nix-env -f .nixpkgs/packs.nix -iA all
mkdir ~/.nixpkgs
ln -s ~/etc/nixos/user-packs.nix ~/.nixpkgs/packs.nix
ln -s ~/etc/nixos/nixpkgs-conf.nix ~/.nixpkgs/config.nix

# activate zsh
ln -s ~/etc/zshrc ~/.zshrc
ln -s ~/etc/xresources ~/.Xresources
xrdb  ~/.Xresources

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

# private configurations for emacs
ln -s /mnt/secure/sec/secure.el ~/etc/emacs/secure.el

# activate emails
ln -s /mnt/secure/mail ~/mail
ln -s /mnt/secure/sec/notmuch-config ~/.notmuch-config
ln -s /mnt/secure/sec/newsrc ~/.newsrc
ln -s /mnt/secure/sec/newsrc.eld ~/.newsrc.eld
ln -s /mnt/secure/sec/procmailrc ~/.procmailrc
ln -s /mnt/secure/sec/fetchmailrc ~/.fetchmailrc
