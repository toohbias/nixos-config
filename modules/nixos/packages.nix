{pkgs, inputs, system, ...}: {
  environment.systemPackages = with pkgs; [
    # Desktop Apps
    ungoogled-chromium

    tuigreet

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
  ];
}
