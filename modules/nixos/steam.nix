{ pkgs, ... }: {
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };

  programs.nix-ld = {
    enable = true;
    libraries = pkgs.steam-run.fhsenv.args.multiPkgs pkgs;
  };

  nixpkgs.config.allowUnfree = true;
}
