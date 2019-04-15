#!/usr/bin/env bash

# Set channel to a release
# sudo nix-channel --add https://nixos.org/channels/nixos-19.03 nixos
# sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos-unstable

# Update channels
# sudo nix-channel --update nixos
# sudo nix-channel --update nixos-unstable

# Use the new configuration
sudo nixos-rebuild switch

# Use local packages
LOCAL_REPO="$HOME/Developer/nixpkgs"
LOCAL_REPO_PACKAGES=()

for package in "${LOCAL_REPO_PACKAGES[@]}"; do
  if ! command -v "$package"; then
    nix-env -f "$LOCAL_REPO" -iA "$package"
  fi
done

# nix-env -q --installed
# nix-env -e docker-credential-gcr

# Collect garbage
sudo nix-collect-garbage

# Base16 shell download to config directory
if [ ! -d "$HOME/.config/base16-shell" ]; then
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi
