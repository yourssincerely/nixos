{ config, pkgs, inputs, ... }: 

{
  imports =
    [
      ./hardware-configuration.nix
      ../../../modules/core
    ];

  boot = {
    plymouth.enable = true;
  };

  console.keyMap = "es";

  hardware.bluetooth.enable = true;

  home-manager = {
    backupFileExtension = "backup";
    extraSpecialArgs = { inherit inputs; };
    users.emmanuel = import ../../../modules/home/emmanuel;
  };

  i18n = {
    defaultLocale = "en_GB.UTF-8";
    extraLocaleSettings = {
      LC_ADDRESS = "es_ES.UTF-8";
      LC_IDENTIFICATION = "es_ES.UTF-8";
      LC_MEASUREMENT = "es_ES.UTF-8";
      LC_MONETARY = "es_ES.UTF-8";
      LC_NAME = "es_ES.UTF-8";
      LC_NUMERIC = "es_ES.UTF-8";
      LC_PAPER = "es_ES.UTF-8";
      LC_TELEPHONE = "es_ES.UTF-8";
      LC_TIME = "es_ES.UTF-8";
    };
  };

  networking = {
    hostName = "laptop";
    networkmanager.enable = true;
  };

  services = {
    upower.enable = true;
    power-profiles-daemon.enable = true;
  };

  users = {
    users.emmanuel = {
      isNormalUser = true;
      description = "emmanuel";
      extraGroups = [
        "networkmanager"
        "wheel"
      ];
      shell = pkgs.zsh;
      uid = 1001;
      hashedPassword = "$y$j9T$Fe.g1bN6ETLEi8sW/I62B/$dec0aoWxJBnQ6dkrgIqMl8Q4XrVR2Uv999ehDU1f6v6";
    };

    mutableUsers = false;
  };
}
