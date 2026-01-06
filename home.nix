{ niri, pkgs, inputs, ... }:
{
  imports = [
    ./home
  ];
  home.stateVersion = "25.11";
  imports = [ niri.homeModules.niri ];
  programs.niri.settings = {
    input = {
      keyboard.xkb.layout = "pl";
      touchpad.tap = true;
    };
    binds = {
      "alt+return".action.spawn = [ "alacritty" ];
      "alt+Q".action.close-window = null;
      "alt+Shift+E".action.quit = null;
    };
    layout = {
      gaps = 10;
      center-focused-column = "never";
    };
  };
}

