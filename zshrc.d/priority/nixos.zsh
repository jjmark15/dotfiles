if [ -e "$HOME"/.nix-profile/etc/profile.d/nix.sh ]; then . "$HOME"/.nix-profile/etc/profile.d/nix.sh; fi

if command_exists nix; then
  quick-update-nixos() {
      nix profile upgrade '.*' && nix-collect-garbage
  }
fi
