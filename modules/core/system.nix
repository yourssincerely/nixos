{ ... }:

{
  time.timeZone = "Europe/Madrid";

  system = {
    autoUpgrade = {
      enable = true;
      flake = "";
      dates = "03:00";
      randomizedDelaySec = "90min";
      allowReboot = true;
      rebootWindow = {
        lower = "03:30";
	upper = "05:00";
      };
      persistent = true;
    };

    stateVersion = "25.11";
  };
}
