{ config, pkgs, lib, ... }:

{
  # List of packages to install for the user
  home.packages = with pkgs; [
    # Utilities
    btop # System monitor
    fastfetch # System info tool
    unzip
    wget
    # Fonts (ensure noto-fonts-cjk-sans is included if needed for CJK)
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    nerd-fonts.profont
    nerd-fonts.shure-tech-mono
    nerd-fonts.space-mono
  ];

  # Font configuration
  fonts.fontconfig.enable = true;
}
