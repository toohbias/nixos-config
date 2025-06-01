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
            action = ''"+y'';
          }
          {
            key = "<leader>ef";
            mode = "n";
            action = ":Neotree toggle<CR>";
          }
          {
            key = "<leader>e";
            mode = "n";
            action = ":Neotree<CR>";
          }
          {
            key = "<leader>mx";
            mode = "n";
            action = "0f[lrx<C-V><esc>$";
          }
          {
            key = "<leader>m-";
            mode = "n";
            action = "0f[lr-<C-V><esc>$";
          }
          {
            key = "<leader>m ";
            mode = "n";
            action = "0f[lr <C-V><esc>$";
          }
        ];

        utility = {
          images.image-nvim = {
            enable = true;
            setupOpts = {
              backend = "kitty";
              integrations.markdown.onlyRenderAtCursor = true;
            };
          };
          motion.flash-nvim.enable = true;
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
          rust.enable = true;

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
