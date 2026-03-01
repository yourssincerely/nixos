{ pkgs, ... }:

{
  services = {

    openssh = {
      enable= true;
    };

    timesyncd = {
      enable = true;
      servers = [
        "europe.pool.ntp.org"
      ];
    };
  };
}
