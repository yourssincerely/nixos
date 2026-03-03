{ config, pkgs, inputs, ... }:

{
  programs = {
    niri = {
      enable = true;
    };
    zsh.enable = true;
  };

  services = {
    blueman.enable = true;
    dbus.enable = true;
    displayManager.dms-greeter = {
      enable = true;
      compositor.name = "niri";
    };
    greetd = {
      enable = true;
    };
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
    power-profiles-daemon.enable = true;
    upower.enable = true;
  };
}

