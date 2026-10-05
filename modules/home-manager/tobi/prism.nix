{ pkgs, ... }: {

  home.packages = with pkgs; [
    prismlauncher
  ];

  xdg.mimeApps.defaultApplications = {
    "x-scheme-handler/prismlauncher" = "prismlauncher.desktop";
  };

}
