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

        telescope.enable = true;
        autocomplete.blink-cmp.enable = true;
        filetree.neo-tree.enable = true;

        keymaps = [
          {
            key = "<leader>ef";
            mode = "n";
            action = "<cmd>Neotree toggle<CR>";
          }
          {
            key = "<leader>e";
            mode = "n";
            action = "<cmd>Neotree focus<CR>";
          }
        ];

        languages = {
          enableLSP = true;
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
