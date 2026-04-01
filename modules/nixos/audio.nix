{

  security.polkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;

    wireplumber.extraConfig = {
      "10-default-source" = {
        "monitor.alsa.rules" = [
          {
            matches = [
              { 
                "node.name" = "alsa_input.usb-BLUE_MICROPHONE_Blue_Snowball_797_2020_12_16_41638-00.mono-fallback";
              }
            ];
            actions = {
              update-props = {
                "priority.session" = 2500;
              };
            };
          }
        ];
      };
    };
  };

  programs.noisetorch.enable = true;

}
