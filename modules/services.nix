{ pkgs, ... }:

{
  services.displayManager.gdm.enable = false;
  services.displayManager.sddm.enable = true;
  services.printing.enable = true;
  services.openssh.enable = true;

  # Enable the GNOME Desktop Environment.
  services.desktopManager.gnome.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  services.xserver.videoDrivers = [
    "amdgpu"
    "nvidia"
  ];

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "pt";
    variant = "nodeadkeys";
  };
}
