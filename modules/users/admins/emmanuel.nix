{ pkgs, ... }:


{
  users = {
    users.emmanuel = {
      isNormalUser = true;
      description = "emmanuel";
      extraGroups = [ "wheel" ];
      shell = pkgs.bash;
      uid = 1001
      hashedPassword = "!";
      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIK+/UJI0lm5f28TzXGvFVdE2sYc9PCC1/N5EVMoLmpxS"
      ];
    };
    
    mutableUsers = false;
  };
}
