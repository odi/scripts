#!/bin/sh

# CHANGELOG:
# 2015-07-24: add media directory
#             add workflow description

# TODO:
#  - customize workflow to the workflow descriptions

# == workflow of getting configurations ==
#
# !!! all these files are from https://github.com/odi/dotfiles !!!
#
# 0. i have a working nixos installation (get configuration.nix from github)
# 1. copy user-packs.nix & nixpkgs-conf.nix from github
# 2. install all user-space packages with `nix-env -f ./nixpkgs/pack.nix -iA all
# 3. activate xmonad
# 4. activate zsh
# 5. activate emacs

# == workflow of getting data ==
#
# !!! first mount secure datastick !!!
#
# 1. link all username/password relevant files/directories
#    ssh, emacs usernames/passwords
# 2. link email data
# 3. link personal wiki
# 4. link all my contacts (bbdb and vcards)
# 5. link my media directory (music, photos, ...)

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

# contacts
ln -s /mnt/secure/sec/bbdb ~/.bbdb
ln -s /mnt/secure/vcards ~/data/vcards

# activate emails
ln -s /mnt/secure/mail ~/mail
ln -s /mnt/secure/sec/notmuch-config ~/.notmuch-config
ln -s /mnt/secure/sec/newsrc ~/.newsrc
ln -s /mnt/secure/sec/newsrc.eld ~/.newsrc.eld
ln -s /mnt/secure/sec/procmailrc ~/.procmailrc
ln -s /mnt/secure/sec/fetchmailrc ~/.fetchmailrc

# link media directory
ln -s /mnt/secure/media ~/media
