{lib, ...}: {
  programs.starship = {
    enable = true;
    enableBashIntegration = true;

    settings = {
      add_newline = true;
      format = lib.concatStrings [
        "[ ](#595959)"
        "$username"
        "[ ](bg:#BA181B fg:#595959)"
        "$directory"
        "$git_branch"
        "$git_status"
        "[  ](#BA181B)"
      ];
      username = {
        show_always = true;
        style_user = "bg:#595959";
        style_root = "bg:#595959 red";
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
