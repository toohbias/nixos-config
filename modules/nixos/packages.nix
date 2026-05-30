{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Desktop Apps
    ungoogled-chromium

    # Coding
    neovim
    tree-sitter

    # CLI utils
    fastfetch
    zoxide
    btop
    git
    ripgrep
    fd
    starship
    eza
    lazygit
    fzf
    bat
    icdiff

    # Other
    home-manager
    nix-index
    tree
    zip
    unzip
    file

    wl-clipboard
    cliphist

    libinput

    qemu
    dnsmasq
    virt-manager

    earlyoom
    uxplay
  ];
}
