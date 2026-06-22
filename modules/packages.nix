{ inputs, pkgs, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget

  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
    kitty
    hyprland
    wayland

    git

    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    firefox

    zed-editor
    vesktop
    chiaki
    heroic
    noctalia-shell
  ];

  programs.hyprland = {
    enable = true;
    package = pkgs.hyprland;
  };

  environment.sessionVariables = {
    HYPRLAND_LUA_CONFIG_DIR = "/etc/nixos/hypr";
  };

  # Helpful for Electron apps (Discord, VS Code, etc.)
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

  imports = [inputs.silentSDDM.nixosModules.default];
  programs.silentSDDM = {
      enable = true;
      theme = "default";

      backgrounds = {
        sddm-bg = ./files/sddm-bg.mp4;
      };
      settings = {
        "LoginScreen" = {
          background = "sddm-bg.mp4";
        };
        "LockScreen" = {
          background = "sddm-bg.mp4";
        };
      };
  };
}
