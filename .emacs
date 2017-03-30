;;

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))
;; (package-initialize)

(set-language-environment 'utf-8)

;; Set your lisp system and, optionally, some contribs
(setq inferior-lisp-program "~/ccl/dx86cl64")
(setq slime-contribs '(slime-fancy))

;; setup load-path and autoloads
(add-to-list 'load-path "~/slime")
(require 'slime-autoloads)
(slime-setup)

;; color theme setup
(add-to-list 'load-path "~/.emacs.d/emacs-color-theme-solarized")
(require 'solarized-theme)

;; hide the tool bar
(tool-bar-mode -1)
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

;; set the font
(set-face-attribute 'default nil :font "Monaco")
(set-face-attribute 'default nil :height 180)

;; Common Lisp mode
(setq auto-mode-alist (append '(("\\.lisp$" . lisp-mode)) auto-mode-alist))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (org))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; org config
(require 'org-install)
;; The following lines are always needed. Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
