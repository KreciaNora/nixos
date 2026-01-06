{ pkgs, inputs, ... }:
{
  imports = [
    ./home
  ];
  home.stateVersion = "25.11";
  services.gnome-keyring.enable = true;
  
}

