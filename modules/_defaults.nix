{ config, pkgs, ... }: {
  imports = [
    ./audio.nix
    ./bootloader.nix
    ./gpu.nix
    ./home.nix
    ./locales.nix
    ./network.nix
    ./packages.nix
    ./packages-unfree.nix
    ./services.nix
    ./settings.nix
    ./users.nix
  ];
}
