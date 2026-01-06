{ ... }:
{
 programs.vim = {
   enable = true;
   settings = {
     number = true;
     relativenumber = true;
     expandtab = true;
     tabstop = 4;
     ignorecase = true;
   };
   extraConfig = ''
     colorscheme zaibatsu
   '';
 };
}
