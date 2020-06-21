;;; init.el --- An initialization file for Emacs 26.3.

;; xah-fly-keys mode
(add-to-list 'load-path "~/.emacs.d/modes/")
(require 'xah-fly-keys)
(xah-fly-keys-set-layout 'qwerty)
(xah-fly-keys 1)

;; basic settings
(setq backward-delete-char-untabify-method 'hungry)
(column-number-mode 1)
(electric-pair-mode 1)
(global-display-line-numbers-mode 1)
(save-place-mode 1)
(setq visible-bell t)

;; CC Mode settings
(setq c-default-style '((c-mode . "linux"))
      c-syntactic-indentation nil
      c-tab-always-indent nil)

;; GUI settings
(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; paren mode settings
(setq show-paren-delay 0)
(show-paren-mode 1)

;; theme settings
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'zenburn t)

;; whitespace mode settings
(setq whitespace-line-column 80
      whitespace-style '(face trailing lines-tail))
(global-whitespace-mode t)

;; Emacs 27 will support a fill column indicator natively by way of the
;; buffer-local minor mode display-fill-column-indicator-mode and its
;; global counterpart global-display-fill-column-indicator-mode.

;;; init.el ends here
