{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    google-chrome
    ffmpeg
    git
    ghostty
    neovim
    fuzzel
    pipewire
    wireplumber
    alsa-utils
    waybar
    wl-clipboard
    wlogout
    brightnessctl
    blueman
    zsh
    mako
    nautilus
    tree
    zsh
    oh-my-zsh
    nerd-fonts.jetbrains-mono
  ];

  programs = {
    niri = {
      enable = true;
      useNautilus = true;
    };
    zsh.enable = true;
  };

  services = {
    openssh.enable = true;
    displayManager.ly.enable = true;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
    dbus.enable = true;
    blueman.enable = true;
  };

  xdg.portal = {
    enable = true;
    wlr.enable = true;
  };
}
