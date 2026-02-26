{ pkgs, ... }:

{
  users.users.emmanuel = {
    isNormalUser = true;
    description = "emmanuel";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };
}
