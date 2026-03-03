{ config, inputs, pkgs, ... }:

{
  boot = {
    plymouth.enable = true;
  };

  hardware.bluetooth.enable = true;

  networking = {
    hostName = "laptop";
    networkmanager.enable = true;
  };

  xdg.portal = {
    enable = true;
    wlr.enable = true;
  };
}

