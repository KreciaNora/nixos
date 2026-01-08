{ config, pkgs, ... }:

{
  programs.emacs = {
    enable = true;
    package = pkgs.emacs-pgtk;

    extraPackages = epkgs: with epkgs; [
      doom-themes
      doom-modeline
      nix-mode
    ];

    extraConfig = ''
      (menu-bar-mode -1)
      (tool-bar-mode -1)
      (scroll-bar-mode -1)
      (setq inhibit-startup-screen t)

      (setq backup-directory-alist `(("." . ,(concat user-emacs-directory "backups"))))
      (setq auto-save-file-name-transforms `((".*" ,(concat user-emacs-directory "auto-save/") t)))
      (setq create-lockfiles nil)

      (load-theme 'doom-dracula t)

      (doom-modeline-mode 1)
      (setq display-line-numbers-type 'relative)
      (global-display-line-numbers-mode t)

      (global-set-key (kbd "C-x C-m") 'execute-extended-command)
      (setq ring-bell-function 'ignore)
    '';
  };
}
