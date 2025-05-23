{pkgs, ...}: {
  fonts.packages = with pkgs; [
    nerd-fonts.fira-code
    fira-code
    dejavu_fonts
    liberation_ttf
  ];
}
