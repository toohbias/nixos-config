{

  programs.bash = {
    enable = true;
    shellAliases = 
    let
      flakePath = "~/nix";
    in {
      rbnixos = "sudo nixos-rebuild switch --flake ${flakePath}#tobi";
      rbhome = "home-manager switch --flake ${flakePath}#tobi";
      rbflake = "nix flake update";

      gc = "sudo nix-collect-garbage -d";
      sd = "shutdown 0";
    };
  };

}
