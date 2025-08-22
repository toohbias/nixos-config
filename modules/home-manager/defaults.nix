{ pkgs, ...}: {

  xdg = {
    enable = true;

    userDirs = {
      enable = true;

      desktop = null;
      download = "$HOME/dld";
      documents = "$HOME/doc";
      templates = null;
      music = null;
      videos = "$HOME/vid";
      pictures = "$HOME/pic";
      publicShare = null;
    };

    mimeApps = {
      enable = true;

      defaultApplications = {
        "text/html" = "chromium-browser.desktop";
        "x-scheme-handler/http" = "chromium-browser.desktop";
        "x-scheme-handler/https" = "chromium-browser.desktop";
        "x-scheme-handler/about" = "chromium-browser.desktop";
        "x-scheme-handler/unknown" = "chromium-browser.desktop";
      };
    };

    configFile."mimeapps.list".force = true;
  };

  environment.sessionVariables.DEFAULT_BROWSER = "${pkgs.ungoogled-chromium}/bin/chromium";

}
