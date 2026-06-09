{ lib, config, ... }: {
  programs.starship = {
    enable = true;
    enableBashIntegration = true;

    settings = {
      add_newline = true;
      format = lib.concatStrings [
        "[ ](#${config.theme.inactive_nt})"
        "$username"
        "[ ](bg:#${config.theme.red_nt} fg:#${config.theme.inactive_nt})"
        "$directory"
        "$git_branch"
        "$git_status"
        "$nix_shell"
        "[  ](#${config.theme.red_nt})"
      ];
      username = {
        show_always = true;
        style_user = "bg:#${config.theme.inactive_nt}";
        style_root = "bg:#${config.theme.inactive_nt} red";
        format = "[󱄅 $user]($style)";
      };
      directory = {
        truncation_length = 3;
        truncation_symbol = ".../";
        home_symbol = "~";
        style = "bg:#${config.theme.red_nt}";
        format = "[$path]($style)";
      };
      git_branch = {
        symbol = "";
        style = "bg:#${config.theme.red_nt}";
        format = "[ on $symbol $branch]($style)";
      };
      git_status = {
        style = "bg:#${config.theme.red_nt}";
        format = "[ \\[$all_status\\]]($style)";
      };
      nix_shell = {
        symbol = "🐚";
        style = "bg:#${config.theme.red_nt}";
        format = "[ $symbol]($style)";
      };
    };
  };
}
