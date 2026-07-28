{ pkgs, ... }: {
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };

  environment.systemPackages = with pkgs; [
    steam-run
  ];

  programs.nix-ld = {
    enable = true;
    libraries = with pkgs; [
      # https://github.com/NixOS/nixpkgs/blob/nixos-26.05/pkgs/by-name/st/steam/package.nix#L68
      glibc
      libxcrypt
      libGL

      libdrm
      libgbm
      udev
      libudev0-shim
      libva
      vulkan-loader

      networkmanager
      # not documented, used for network status things in Big Picture
      # FIXME: figure out how to only build libnm?
      libcap # not documented, required by srt-bwrap
    ];
  };

  nixpkgs.config.allowUnfree = true;
}
