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
        "${config.wayland.windowManager.sway.config.modifier}+q" = "kill";
      };
      output = {
        "eDP-1" = {
          pos = "0 0";
          res = "1920x1080";
        };
        "DP-2" = {
          pos = "1920 0";
          res = "1920x1080";
        };
        "HDMI-A-1" = {
          pos = "3840 0";
          res = "1920x1080@74.973Hz";
        };
      };
      startup = [
        {command = "kitty";}
      ];
    };
  };
}
