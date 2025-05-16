{ pkgs, ...}: {

  home.packages = with pkgs; [
    javaPackages.openjfx21
#   libglibutil
#   xorg.libXxf86vm
#   glibc
#   glib
#   gsettings-desktop-schemas
    (pkgs.jdk21.override {enableJavaFX = true;})
  ];
 
}
