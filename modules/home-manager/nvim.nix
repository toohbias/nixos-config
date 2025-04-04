{ inputs, ... }: {
  
  imports = [inputs.nvf.homeManagerModules.default ];

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

	    languages = {
          enableLSP = true;
          enableTreesitter = true;

          nix.enable = true;
        };
      };
    };
  };

}
