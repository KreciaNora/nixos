{ pkgs, ... }:
{
    programs.steam = {
      enable = true;  
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
    };
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
    btop
    vlc
    vscodium
    wine
    jetbrains-toolbox
    nodejs
    qbittorrent
    legcord
    swaybg
    google-chrome
    lutris
    qdirstat
  ]; 
}
