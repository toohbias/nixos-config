{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf.url = "github:notashelf/nvf";
  };

  outputs = {
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations.tobi = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit nixpkgs;};
      inherit system;
      modules = [./hosts/gmktec/configuration.nix];
    };

    homeConfigurations.tobi = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = [./hosts/gmktec/home.nix];
      extraSpecialArgs = {
        inherit inputs;
      };
    };
  };
}
