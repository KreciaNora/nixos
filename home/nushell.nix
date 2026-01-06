{ ... }:
{
  programs.nushell = {
    enable = true;
    extraConfig = ''
      $env.config.show_banner = false
    '';
  };
  programs = {
    carapace.enable = true;
    carapace.enableNushellIntegration = true;
  };
}
