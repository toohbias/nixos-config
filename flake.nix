{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf.url = "github:notashelf/nvf";

    mcmojave-hyprcursor.url = "github:libadoxon/mcmojave-hyprcursor";

    # hack to fix waybar workspaces not switching, see https://github.com/Alexays/Waybar/pull/5013
    # TODO: remove at 26.11
    waybar-fixed = {
        url = "github:Alexays/Waybar/e17c0d9f0a73acc370df60ec8c532b1ed2385c73";
        inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    nixpkgs-unstable,
    home-manager,
    waybar-fixed, # TODO: remove at 26.11
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit nixpkgs;};
      inherit system;
      modules = [
        ({
          systemd.tmpfiles.rules = [
            "L+ /home/tobi/nix      - - - -  /home/nix-shared/modules/home-manager/tobi"
            "L+ /home/babbabra/nix  - - - -  /home/nix-shared/modules/home-manager/babbabra"
          ];
        })
        ./configuration.nix
      ];
    };

    homeConfigurations = {
      tobi = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = let
          name = "tobi";
        in [ ({
            imports = [./modules/home-manager/${name}];

            home = {
              username = name;
              homeDirectory = "/home/${name}/";
              stateVersion = "26.05";
            };

            news.display = "silent";
        }) ];
        extraSpecialArgs = {
          inherit inputs;
          inherit pkgs-unstable;
          inherit waybar-fixed; # TODO: remove at 26.11
        };
      };
      
      # /*
      babbabra = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = let
          name = "babbabra";
        in [ ({
            imports = [./modules/home-manager/${name}];

            home = {
              username = name;
              homeDirectory = "/home/${name}/";
              stateVersion = "26.05";
            };

            news.display = "silent";
        }) ];
        extraSpecialArgs = {
          inherit inputs;
        };
      };
    };
    # */

    devShells.${system} = {
      graphics = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [ pkg-config ];
        buildInputs = with pkgs; [
          vulkan-loader
          vulkan-tools
          vulkan-tools-lunarg
          vulkan-headers
          vulkan-validation-layers
          shaderc
          glfw
          wayland
          libxkbcommon
          wayland-scanner
          mesa
        ];
        LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath (with pkgs; [ 
          vulkan-loader
          wayland 
          libxkbcommon
          libglvnd
          mesa
        ]);
        VULKAN_SDK = pkgs.vulkan-headers;
        VK_LAYER_PATH = "${pkgs.vulkan-validation-layers}/share/vulkan/explicit_layer.d";
        VK_ICD_FILENAMES = "${pkgs.mesa}/share/vulkan/icd.d/intel_icd.x86_64.json";
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
      zig = pkgs.mkShell {
        buildInputs = [ pkgs.zig ];
        shellHook = ''
          export PATH="/home/tobi/dld/zig:$PATH"
          echo '{"zig_exe_path": "/home/tobi/dld/zig/zig"}' > $(/home/tobi/dld/zls/zls env | grep local_config_dir | cut -d':' -f2 | tr -d ' ",' | sed 's/$/\/zls.json/')
          cd $ORIGINAL_DIR
        '';
      };     
    };
  };
}
