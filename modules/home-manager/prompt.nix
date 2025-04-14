{ lib, ... }: {

  programs.starship = {
    enable = true;
    enableBashIntegration = true;

    settings = {
      add_newline = true;
      format = lib.concatStrings [
        "[ ](#696969)"
        "$username"
        "[ ](bg:#BA181B fg:#696969)"
        "$directory"
        "$git_branch"
        "$git_status"
        "[  ](#BA181B)"
      ];
      username = {
        show_always = true;
        style_user = "bg:#696969";
        style_root = "bg:#696969 red";
        format = "[󱄅 $user]($style)";
      };
      directory = {
        truncation_length = 3;
        truncation_symbol = ".../";
        home_symbol = "~";
        style = "bg:#BA181B";
        format = "[$path]($style)";
      };
      git_branch = {
        symbol = "";
        style = "bg:#BA181B";
        format = "[ on $symbol $branch]($style)";
      };
      git_status = {
        style = "bg:#BA181B";
        format = "[ \\[$all_status\\]]($style)";
      };
    };
  };

}
