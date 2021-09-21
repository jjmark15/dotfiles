if [ -e "$HOME"/.nix-profile/etc/profile.d/nix.sh ]; then . "$HOME"/.nix-profile/etc/profile.d/nix.sh; fi

if [ "$(command -v nix-env)" ]; then
  quick-update-nixos() {
      nix-channel --update nixpkgs && nix-env -u '*' && nix-collect-garbage -d
  }
fi
