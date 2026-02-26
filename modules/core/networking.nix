{ ... }:

{
  networking = {
    firewall = {
      enable = true;
      checkReversePath = "loose";
    };
  };

  services = {
    resolved.enable = true;
    tailscale = {
      enable = true;
      useRoutingFeatures = "client";
    };
  };
}
