{ config, pkgs, lib, ... }:

{
  imports = [
    ./packages.nix          # User packages
  ];

  home = {
    username = "camaro";
    homeDirectory = "/home/camaro";
    stateVersion = "26.05";
  };

  # Enable Home Manager
  programs.home-manager.enable = true;
}
