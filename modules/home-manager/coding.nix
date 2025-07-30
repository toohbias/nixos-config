{ pkgs, ... }: {

  home.packages = with pkgs; [

    # Java
    javaPackages.openjfx21
    (pkgs.jdk21.override {enableJavaFX = true;})

    # C
    gcc
    gdb
    gnumake
    cmake

    # Rust
    rustup

    # Python
    jupyter

    # Typst
    typst
  ];

  xdg.desktopEntries = {
    StackingWM = {
      name = "StackingWM";
      genericName = "Window Manager with IntelliJ";
      exec = "labwc --session idea-ultimate";
      terminal = false;
    };
  };
  xdg.configFile."labwc/environment".text = ''
    XKB_DEFAULT_LAYOUT=us
    XKB_DEFAULT_OPTIONS=caps:swapescape,grp_led:scroll
  '';

}
