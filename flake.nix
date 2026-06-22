{
  description = "Whiskey Flakes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    silentSDDM = {
       url = "github:uiriansan/SilentSDDM";
       inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@ { self, nixpkgs, home-manager, ... }: {
    nixosConfigurations.whiskey = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      specialArgs = {
        inherit inputs;
      };

      modules = [
        ./configuration.nix
      ];
    };
  };
}
