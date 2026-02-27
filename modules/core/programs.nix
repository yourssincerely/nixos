{ pkgs, ... }:

{
  programs = {
    
    niri = {
      enable = true;
    };

    zsh.enable = true;
  };
}
