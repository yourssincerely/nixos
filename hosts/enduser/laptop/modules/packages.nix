{ inputs, pkgs, ... }:

{
  environment = {
      systemPackages = with pkgs; [
        google-chrome
        adawaita-icon-theme
        ffmpeg
        niri
        ghostty
        cups-pk-helper
        accountsservice
        neovim
        direnv
        devenv
        pcmanfm
        pipewire
        wireplumber
        alsa-utils
        wl-clipboard
        wlogout
        brightnessctl
        blueman
        tree
        tuigreet
        vlc
        oh-my-zsh
        nerd-fonts.jetbrains-mono
      ];
    sessionVariables = {
      XCURSOR_THEME = "Adwaita";
      XCURSOR_SIZE = "24";
    };
  };
}
