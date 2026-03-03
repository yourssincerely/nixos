{ config, pkgs, inputs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../../modules/core
      ./modules
    ];

  home-manager = {
    backupFileExtension = "backup";
    extraSpecialArgs = { inherit inputs; };
    users.emmanuel = import ../../../modules/home/emmanuel;
  };
}
