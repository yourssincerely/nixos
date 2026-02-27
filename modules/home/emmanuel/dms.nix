{ pkgs, inputs, ... }:

{
  imports = [
    inputs.dms.homeModules.dank-material-shell
  ];

  programs = {
    dank-material-shell = {
      enable = true;
      package = inputs.dms.packages.${pkgs.stdenv.hostPlatform.system}.default;
      systemd = {
        enable = true;
        restartIfChanged = true;
      };
      enableSystemMonitoring = true;
      enableVPN = true;
      enableDynamiTheming = true;
      enableCalendarEvents = true;
      enableClipboardPaste = true;
    };
  };
}
