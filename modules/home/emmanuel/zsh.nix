{ pkgs, ... }:

{
  programs = {
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion = {
        enable = true;
        highlight = "fg=#ff00ff,bg=cyan,bold";
      };
      syntaxHighlighting.enable = true;
      history = {
        size = 10000;
        ignoreAllDups = true;
        ignorePatterns = [
          "rm *"
          "git clone *"
          "ls *"
        ];
      };
      initContent = ''
        amixer -c 0 set Headphone unmute > /dev/null 2>&1
      '';
      oh-my-zsh = {
        enable = true;
        plugins = [
          "git"
          "sudo"
        ];
        theme = "ys";
      };
    };
  };
}
