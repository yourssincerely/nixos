{ ... }:

{
  xdg = {
    configFile = {
      "niri".source = ./dotfiles/niri;
      "ghostty/config".source = ./dotfiles/ghostty;
      "nvim".source = ./dotfiles/nvim;
      "DankMaterialShell".source = ./dotfiles/dms;
      "google-chrome".source = ./dotfiles/google-chrome;
      "wallpapers".source = ./dotfiles/wallpapers;
    };
  };
}
