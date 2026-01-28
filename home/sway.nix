{ config, pkgs, lib,  ... }:
{
  wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    config = rec {
      modifier = "Mod4";
/*      gaps = {
        inner = 0;
        outer = 0;
      };*/
      terminal = "kitty";
      input = {
        "type:keyboard" = {
          xkb_layout = "pl";
	        xkb_variant = "colemak";
	        xkb_options = "ctrl:nocaps";
        };
        "type:touchpad" = {
          tap = "enabled";
          natural_scroll = "enabled";
          dwt = "enabled";
          middle_emulation = "enabled";
        };
        "type:pointer" = {
          accel_profile = "flat";
          pointer_accel = "0";
        };
      };
      keybindings = lib.mkOptionDefault {
        "${config.wayland.windowManager.sway.config.modifier}+Return" = "exec ${pkgs.kitty}/bin/kitty";
        "${config.wayland.windowManager.sway.config.modifier}+d" = "exec ${pkgs.fuzzel}/bin/fuzzel";
        "${config.wayland.windowManager.sway.config.modifier}+q" = "kill";
        "${config.wayland.windowManager.sway.config.modifier}+Shift+b" = "exec waybar";
        "${config.wayland.windowManager.sway.config.modifier}+Shift+k" = "exec pkill waybar";
        "${modifier}+Shift+s" = "exec 'grim -g \"$(slurp)\" - | wl-copy'";
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
      window.border = 3;
      window.titlebar = false;

      colors = {
        focused = {
          background = "#BBBEFE";
          border = "#BBBEFE";
          childBorder = "#BBBEFE";
          indicator = "#BBBEFE";
          text = "#ffffff";
        };
        focusedInactive = {
          background = "#444444";
          border = "#444444";
          childBorder = "#444444";
          indicator = "#444444";
          text = "#ffffff";
        };
        
      };
      
      startup = [
        {command = "waybar";}
        {command = "swaybg -i /home/krecikowa/Downloads/b.png";}

      ];
      bars = [];
    };
  };
}
