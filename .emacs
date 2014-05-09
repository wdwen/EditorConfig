;;
(set-language-environment 'utf-8)

;; setup load-path and autoloads
(add-to-list 'load-path "~/.emacs.d/slime")
(require 'slime-autoloads)

;; Set your lisp system and, optionally, some contribs
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq slime-contribs '(slime-fancy))

;; color theme setup 
(add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-color-theme-solarized/")
(load-theme 'solarized-light t)

;; hide the tool bar
(tool-bar-mode -1)

;; set the font
(set-face-attribute 'default nil :font "Mono")
(set-face-attribute 'default nil :height 170)

;; Common Lisp mode
(setq auto-mode-alist (append '(("\\.lisp$" . lisp-mode))
			auto-mode-alist))
