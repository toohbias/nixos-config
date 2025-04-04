{ pkgs, user, ... }: {
  
  users.users.tobi = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };

}
