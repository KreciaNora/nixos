{ pkgs, inputs, ... }:
{
  imports = [
    ./home
  ];
  home.stateVersion = "25.11";
}

