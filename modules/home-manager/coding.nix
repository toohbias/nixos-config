{ pkgs, ... }: {

  home.packages = with pkgs; [

    # Java
    javaPackages.openjfx21
    (pkgs.jdk21.override {enableJavaFX = true;})

    # C
    gcc

    # Rust
    rustup
  ];

  xdg.desktopEntries = {
    StackingWM = {
      name = "StackingWM";
      genericName = "Window Manager with IntelliJ";
      exec = "labwc --startup idea-ultimate";
      terminal = false;
    };
  };

}
