{ pkgs, ... }:

{
  programs = {
    ssh = {
      enable = true;
      enableDefaultConfig = false;
      matchBlocks = {
        github = {
          host = "github.com";
          identityFile = "~/.ssh/github";
        };
      };
    };
  };

  services = {
    ssh-agent = {
      enable = true;
      enableZshIntegration = true;
    };
  };
}
