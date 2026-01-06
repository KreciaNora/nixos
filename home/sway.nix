{ config, pkgs, lib,  ... }:
{
  wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    config = rec {
      modifier = "Mod1";
      gaps = {
        inner = 10;
        outer = 10;
      };
      terminal = "kitty";
      input = {
        "type:keyboard" = {
          xkb_layout = "pl";
        };
      };
      keybindings = lib.mkOptionDefault {
        "${config.wayland.windowManager.sway.config.modifier}+Return" = "exec ${pkgs.kitty}/bin/kitty";
        "${config.wayland.windowManager.sway.config.modifier}+d" = "exec ${pkgs.fuzzel}/bin/fuzzel";
      };
      startup = [
        {command = "kitty";}
      ];
    };
  };
}
