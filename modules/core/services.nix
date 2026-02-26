{ pkgs, ... }:

{
  services = {

    greetd = {
      enable = false;
      settings = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --cmd niri";
        user = "emmanuel";
      };
    }; 
    
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
