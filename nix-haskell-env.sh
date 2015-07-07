#!/bin/sh

if [ $# -ne 2 ]; then
    echo "usage: $0 <cabal-file> <package-name>"
    exit 1
fi

cabalFile=$1
packageName=$2

# create default.nix
cabal2nix --sha256=foo ${cabalFile} | sed s/sha256\ =\ \"foo\"/src\ =\ .\\/./g > default.nix

# create shell.nix
cat <<EOT >> shell.nix
with (import <nixpkgs> {}).pkgs;
let myHaskellPackages = haskellPackages.override {
      overrides = self: super: {
EOT
echo "        ${packageName} = self.callPackage ./. {};" >> shell.nix
cat <<EOT >> shell.nix
      };
    };
EOT
echo "in myHaskellPackages.${packageName}.env" >> shell.nix
