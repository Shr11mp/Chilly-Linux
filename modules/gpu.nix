{ config, pkgs, ... }:

{
  hardware.graphics.enable = true;

  hardware.nvidia = {
    modesetting.enable = true;

    # For RTX 5070 Laptop
    open = true;

    powerManagement.enable = true;

    prime = {
      offload.enable = true;

      amdgpuBusId = "PCI:65@0:0:0";
      nvidiaBusId = "PCI:01@0:0:0";
    };
  };
}
