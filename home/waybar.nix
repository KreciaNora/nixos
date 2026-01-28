
{ config, pkgs, ... }:
{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        margin-left = 0;
        margin-right = 0;
        margin-top = 0;
        height = 20;
        modules-left = [ "sway/workspaces" ];
        modules-center = [ "sway/window" ];
        modules-right = [ "pulseaudio" "backlight" "memory" "temperature" "tray" "clock" ];

        "sway/workspaces" = {
          disable-scroll = false;
          all-outputs = false;
        };
        pulseaudio = {
          format = "🎵 {volume}%";
          on-click = "pavucontrol";
        };
        backlight = {
          format = "⚫ {percent}%";

        };
        memory = {
          format = "⚙️ {percentage}%";
        };
       
      };
      
    };
    style = 
      ''
        * {
          border: none;
          border-radius: 0;
          color: #BBBEFE;
        }
        window#waybar {
          color: #BBBEFE;
          background: black;



          padding: 10px;
        }
        #temperature,#clock,#memory,#backlight,#pulseaudio,#tray{
          background: #BBBEFE;
          padding-left: 10px;
          padding-right: 10px;
          color: #000;
        
          
        }
        
        #clock{
          margin-right: 0px;
        }
        #workspaces button{
        }
        #workspaces button.focused{
          background: #BBBEFE;
          }
        #workspaces button.focused label{
          color: #000;
          }
      '';
    
  };
}
