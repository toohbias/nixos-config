{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    mcmojave-hyprcursor.url = "github:libadoxon/mcmojave-hyprcursor";

    nix-index-database = {
      url = "github:nix-community/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    home-manager,
    nix-index-database,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    host = "gmktec";
  in {
    nixosConfigurations.tobi = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit nixpkgs;};
      inherit system;
      modules = [
        ./hosts/${host}/configuration.nix
        nix-index-database.nixosModules.default
      ];
    };

    homeConfigurations.tobi = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = [./hosts/${host}/home.nix];
      extraSpecialArgs = {
        inherit inputs;
      };
    };

    devShells.${system} = {
      graphics = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [ pkg-config ];
        buildInputs = with pkgs; [
          vulkan-loader
          vulkan-tools
          vulkan-headers
          vulkan-validation-layers
          shaderc
          glfw
          wayland
          libxkbcommon
          wayland-scanner
        ];
        LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath (with pkgs; [ 
          vulkan-loader
          wayland 
          libxkbcommon
          libglvnd
        ]);
        shellHook = ''
          cd $ORIGINAL_DIR
        '';
      };
      jfx = pkgs.mkShell {
        buildInputs = with pkgs; [
          javaPackages.openjfx21
          (pkgs.jdk21.override {enableJavaFX = true;})
        ];
        env = {
          JAVA_HOME = pkgs.jdk21.outPath;
        };
        shellHook = ''
          cd $ORIGINAL_DIR
        '';
      };
    };
  };
}
