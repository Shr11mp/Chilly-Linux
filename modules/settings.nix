{ config, pkgs, ... }:

{
  nix.gc = {
    automatic = true;
    dates = "03:15";
    # Note: Nix's GC doesn't have a direct '--keep 10' flag,
    # so we pair GC with a system boot limit or use a script.
    options = "--delete-older-than 7d";
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  nix.settings.trusted-users = [ "root" "camaro" ];
}
