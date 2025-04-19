{pkgs, ...}: {
  fonts.packages = with pkgs; [
    (nerdfonts.override {fonts = ["FiraCode"];})
    fira-code
    dejavu_fonts
    liberation_ttf
  ];
}
