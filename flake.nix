{
  description = "ALK's NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim.url = "github:alcestide/nixvim";
  };

  outputs = inputs@{ nixpkgs, nixvim, home-manager, ... }: {

    nixosConfigurations = {
      alknix = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
	specialArgs = {inherit inputs; };
        modules = [
          ./nixos/configuration.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.alcestide = import ./home-manager/home.nix;

         }
        ];
      };
    };
  };
}
