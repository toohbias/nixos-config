{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf.url = "github:notashelf/nvf";

    mcmojave-hyprcursor.url = "github:libadoxon/mcmojave-hyprcursor";
  };

  outputs = {
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    host = "gmktec";
  in {
    nixosConfigurations.tobi = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit nixpkgs;};
      inherit system;
      modules = [./hosts/${host}/configuration.nix];
    };

    homeConfigurations.tobi = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = [./hosts/${host}/home.nix];
      extraSpecialArgs = {
        inherit inputs;
      };
    };

    devShells.${system} = {
      opengl = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [ pkg-config ];
        buildInputs = with pkgs; [
          glfw-wayland
          wayland
          libxkbcommon
          wayland-scanner
        ];
        LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath (with pkgs; [ 
          wayland 
          libxkbcommon
          libglvnd
        ]);
        shellHook = ''
          cd $ORIGINAL_DIR
        '';
      };
    };
  };
}
