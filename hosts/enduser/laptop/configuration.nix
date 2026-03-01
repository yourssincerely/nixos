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

  environment.systemPackages = with pkgs; [
    google-chrome
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
    dms-greeter
    alsa-utils
    wl-clipboard
    wlogout
    brightnessctl
    blueman
    tree
    vlc
    oh-my-zsh
    nerd-fonts.jetbrains-mono
  ];

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
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
    power-profiles-daemon.enable = true;
    upower.enable = true;
  };

  users = {
    users = {
      emmanuel = {
        isNormalUser = true;
        description = "emmanuel";
        extraGroups = [
          "networkmanager"
          "wheel"
          "input"
        ];
        shell = pkgs.zsh;
        uid = 1001;
        hashedPassword = "$y$j9T$Fe.g1bN6ETLEi8sW/I62B/$dec0aoWxJBnQ6dkrgIqMl8Q4XrVR2Uv999ehDU1f6v6";
      };
    };
    mutableUsers = false;
  };

  xdg.portal = {
    enable = true;
    wlr.enable = true;
  };
}
