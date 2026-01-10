{ pkgs, ... }:
{
    nixpkgs.config.allowUnfree = true;
    programs.sway.enable = true;
    environment.systemPackages = with pkgs; [
    #vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    emacs
    wget
    git
    kitty
    librewolf
    wofi
    pavucontrol
    grim
    slurp
    wl-clipboard
    shotman
  ]; 
}
