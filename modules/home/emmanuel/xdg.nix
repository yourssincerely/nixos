{ ... }:

{
  xdg = {
    configFile = {
      "niri/config.kdl".source = ./dotfiles/niri.kdl;
      "ghostty/config".source = ./dotfiles/ghostty;
      "nvim".source = ./dotfiles/nvim;
      "DankMaterialShell".source = ./dotfiles/dms;
    };
  };
}
