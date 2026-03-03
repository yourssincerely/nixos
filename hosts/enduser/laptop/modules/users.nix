{ config, pkgs, inputs, ... }:

{
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
}

