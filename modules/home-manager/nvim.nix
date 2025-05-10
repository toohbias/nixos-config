{inputs, ...}: {
  imports = [inputs.nvf.homeManagerModules.default];

  programs.nvf = {
    enable = true;

    settings = {
      vim = {
        options = {
          shiftwidth = 0;
          tabstop = 4;
        };

        useSystemClipboard = true;

        telescope.enable = true;
        autocomplete.blink-cmp.enable = true;
        filetree.neo-tree.enable = true;

        lsp.enable = true;

        languages = {
          enableTreesitter = true;
          enableFormat = true;

          nix.enable = true;
          markdown = {
            enable = true;
            extensions.render-markdown-nvim.enable = true;
          };
        };
      };
    };
  };
}
