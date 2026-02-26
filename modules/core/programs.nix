{ pkgs, ... }:

{
  programs = {
    
    niri = {
      enable = true;
      useNautilus = true;
    };
   
    zsh.enable = true;
  };
}
