{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    curl
    wget
    ripgrep
    fd
    jq
    htop
    rsync
    nmap
    netcat
    dig
    gnupg
    tailscale
    zip
  ];
}
