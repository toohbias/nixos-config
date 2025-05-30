{

  time.timeZone = "Europe/Berlin";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_NUMBERIC = "de_DE.UTF-8";
  };
 
  services.xserver.xkb = {
    layout = "us,de";
    options = "caps:swapescape,grp_led:scroll";
  };

}
