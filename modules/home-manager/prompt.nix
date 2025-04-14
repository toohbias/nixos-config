{

  programs.starship = {
    enable = true;
    enableBashIntegration = true;

    settings = {
      add_newline = false;
      format = ''
        [](#161A1D)\
        $os\
        [](bg:#660708 fg:#161A1D)\
        $username\
        [](bg:#A4161A fg:#660708)\
        $directory\
        [](bg:#BA181B fg:#A4161A)\
        $git_branch\
        $git_status\
        [](#BA181B)\
      '';

      os = {
        disabled = false;
        style = "bg:161A1D";
        format = "[$symbol]($style)";
      };
      username = {
        disabled = false;
        show_always = true;
        style_user = "bg:#660708";
        style_root = "bg:#660708 bold";
        format = "[$user]($style)";
      };
      directory = {
        disabled = false;
        truncation_length = 3;
        truncation_symbol = ".../";
        style = "bg:#A4161A";
        format = "[$path]($style)";
      };
      git_branch = {
        disbled = false;
        symbol = "";
        style = "bg:#BA181B";
        format = "[$symbol $branch]($style)";
      };
      git_status = {
        disabled = false;
        style = "bg:#BA181B";
        format = "[$all_status]($style)";
      };
    };
  };

}
