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
            mode = ["n" "x"];
            action = ''"+y'';
          }
          {
            key = "p";
            mode = "n";
            action = ''"+p'';
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
          {
            key = "<leader>mc";
            mode = "n";
            action = "I- [ ] <esc>$";
          }
          {
            key = "<leader>rc";
            mode = "n";
            action = ":!gcc <C-R>% -o test -lm; ./test<CR>";
          }
          {
            key = "<leader>rcpp";
            mode = "n";
            action = ":!g++ <C-R>% -o test; ./test<CR>";
          }
          {
            key = "<leader>rp";
            mode = "n";
            action = ":!python3 <C-R>%<CR>";
          }
          {
            key = "<leader>rj";
            mode = "n";
            action = ":!javac <C-R>%; java %:r<CR>";
          }
          {
            key = "<leader>rr";
            mode = "n";
            action = ":!cargo run<CR>";
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
          motion.flash-nvim = {
            enable = true;
            mappings = {
              jump = "<leader>s";
              treesitter = "<leader>S";
            };
          };
          surround = {
            enable = true;
            useVendoredKeybindings = false;
          };
        };

        telescope.enable = true;
        autocomplete.blink-cmp.enable = true;
        filetree.neo-tree.enable = true;
        binds.whichKey.enable = true;

        lsp.enable = true;

        languages = {
          enableTreesitter = true;
          enableFormat = true;

          java.enable = true;
          clang.enable = true;
          rust.enable = true;
          python.enable = true;

          #nix.enable = true; # has to build from source and is huge and isnt as useful anymore
          markdown = {
            enable = true;
            extensions.markview-nvim.enable = true;
          };
        };
      };
    };
  };
}
