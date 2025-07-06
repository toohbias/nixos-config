{ pkgs, ... }: {

  home.packages = with pkgs; [

    # Java
    javaPackages.openjfx21
    (pkgs.jdk21.override {enableJavaFX = true;})

    # C
    gcc
    gdb
    gnumake
    cmakeWithGui

    # opengl
    # glfw
    wayland-scanner
    pkg-config


    # Rust
    rustup

    # Python
    jupyter
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
