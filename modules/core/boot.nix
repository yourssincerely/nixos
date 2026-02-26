{ ... }:

{
  boot = {
    initrd = {
      systemd.enable = true;
      network.enable = true;
      verbose = false;
    };
    loader = {
      systemd-boot = {
        enable = true;
	configurationLimit = 5;
      };
      efi.canTouchEfiVariables = true;
      timeout = 3;
    };
  };
}
