{ pkgs, ... }:

{

  home.stateVersion = "25.11";

  programs = {

    ghostty = {
      enable = true;
      enableZshIntegration = true;
    };

    git = {
      enable = true;
      settings = {
        user = {
          email = "rubengoesfreelance@gmail.com";
          name = "yourssincerely";
        };
        core.editor = "nvim";
        init.defaultBranch = "main";
      };
    };
  };
}
