
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

        statusline.lualine = {
          enable = true;
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
            key = ";";
            mode = ["n" "x"];
            action = ":";
          }
          {
            key = ":";
            mode = ["n" "x"];
            action = ";";
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
          {
            key = "<leader>rz";
            mode = "n";
            action = ":!zig run <C-R>%<CR>";
          }
          {
            key = "<leader>rh";
            mode = "n";
            action = ":!ghc <C-R>% -o test; ./test<CR>";
          }
          {
            key = "<leader>rt";
            mode = "n";
            action = ":!typst compile<CR>";
          }
          {
            key = "<leader>rg";
            mode = "n";
            action = "!go run <C-R>%";
          }
          {
            key = "<leader>p";
            mode = "n";
            action = ":TypstPreview<CR>";
          }
          {
            key = "<C-h>";
            mode = "n"; 
            action = ":silent !tmux select-pane -L<CR";
          }
          {
            key = "<C-j>";
            mode = "n";
            action = ":silent !tmux select-pane -D<CR";
          }
          {
            key = "<C-k>";
            mode = "n";
            action = ":silent !tmux select-pane -U<CR";
          }
          {
            key = "<C-l>";
            mode = "n";
            action = ":silent !tmux select-pane -R<CR";
          }
        ];

        theme = {
          enable = true;
          name = "github";
          style = "dark";
        };

        highlight.Normal.bg = "Black";
        highlight.NormalFloat.bg = "Black";
        highlight.NormalNC.bg = "Black";
        highlight.Pmenu.bg = "Black";
        highlight.NeoTreeNormal.bg = "Black";

        utility = {
          images.image-nvim = {
            enable = true;
            setupOpts = {
              backend = "kitty";
              integrations = {
                markdown.onlyRenderAtCursor = true;
                typst.enabled = false;
              };
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
        presence.neocord = {
          enable = true;
          setupOpts = {
            logo = "https://avatars.githubusercontent.com/u/6471485?s=48&v=4";
            main_image = "logo";
            global_timer = true;
          };
        };

        lsp.enable = true;

        languages = {
          enableTreesitter = true;

          java.enable = true;
          java.treesitter.enable = true;
          clang.enable = true;
          rust.enable = true;
          assembly.enable = true;
          python.enable = true;
          zig.enable = true;
          go.enable = true;
          haskell.enable = true;
          ts.enable = true;

          typst = {
            enable = true;
            extensions = {
              typst-preview-nvim = {
                enable = true;
                setupOpts = {
                  port = 8000;
                  debug = true;
                };
              };
              # typst-concealer.enable = true;
            };
          };

          markdown = {
            enable = true;
            extensions.markview-nvim = {
              enable = true;
              setupOpts = {
                typst.code_blocks.style = "simple";
              };
            };
          };
        };
      };
    };
  };
}
