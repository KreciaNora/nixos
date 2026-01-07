{ config, pkgs, ... }:
{
 programs.emacs = {
   enable = true;
   package = pkgs.emacs;
   defaultEditor = true;
     
 };
}