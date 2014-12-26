;; Turn off mouse interface early in startup to avoid momentary display
;; (if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen 
(setq inhibit-startup-message t)
(put 'dired-find-alternate-file 'disabled nil)

;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)

(require 'evil)
(evil-mode 1)

(require 'ido)
(ido-mode t)

(set-default-font "Inconsolata")
(set-face-attribute 'default nil :height 110)

;; (require 'color-theme)
;; (setq color-theme-is-global t)
;; (color-theme-solarized-light)

;; setup Go mode
(add-to-list 'load-path "~/.emacs.d/go")
(require 'go-mode-load)

;; setup Haskell mode
(custom-set-variables
 '(haskell-mode-hook'(turn-on-haskell-simple-indent)))

