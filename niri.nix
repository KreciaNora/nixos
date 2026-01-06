{ niri, ... }:
{
  imports = [ niri.nixosModules.niri];
  programs.niri.enable = true;
}
