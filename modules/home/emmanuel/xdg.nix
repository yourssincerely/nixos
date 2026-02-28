{ ... }:

{
  xdg = {
    configFile = {
      "niri".source = ./dotfiles/niri;
      "ghostty/config".source = ./dotfiles/ghostty;
      "nvim".source = ./dotfiles/nvim;
      "DankMaterialShell".source = ./dotfiles/dms;
      "wallpapers".source = ./dotfiles/wallpapers;
    };
  };
}
