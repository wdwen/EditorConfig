;;
(set-language-environment 'utf-8)

;; setup load-path and autoloads
(add-to-list 'load-path "~/slime")
(require 'slime-autoloads)

;; Set your lisp system and, optionally, some contribs
(setq inferior-lisp-program "~/ccl/dx86cl64")
(setq slime-contribs '(slime-fancy))

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
