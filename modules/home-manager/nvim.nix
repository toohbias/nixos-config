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

        keymaps = [
          {
            key = "y";
            mode = "n";
            silent = true;
            action = ''"+y'';
          }
          {
            key = "<leader>ef";
            mode = "n";
            silent = true;
            action = ":Neotree toggle";
          }
          {
            key = "<leader>e";
            mode = "n";
            silent = true;
            action = ":Neotree";
          }
        ];

        utility.images.image-nvim = {
          enable = true;
          setupOpts = {
            backend = "kitty";
            integrations.markdown.onlyRenderAtCursor = true;
          };
        };

        telescope.enable = true;
        autocomplete.blink-cmp.enable = true;
        filetree.neo-tree.enable = true;

        lsp.enable = true;

        languages = {
          enableTreesitter = true;
          enableFormat = true;

          java.enable = true;
          clang.enable = true;

          nix.enable = true;
          markdown = {
            enable = true;
            extensions.markview-nvim.enable = true;
          };
        };
      };
    };
  };
}
