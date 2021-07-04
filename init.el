;;; init.el --- An initialization file for Emacs 26.3.


;;; Basic settings

;; Basic
(set-face-attribute 'default nil
                    :family "JetBrains Mono"
                    :height 200)
(setq backward-delete-char-untabify-method 'hungry)
(column-number-mode 1)
(electric-pair-mode 1)
(global-display-line-numbers-mode 1)
(save-place-mode 1)
(setq visible-bell t)
(setq make-backup-files nil)
(setq auto-save-default nil)

;; GUI
(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; paren mode
(setq show-paren-delay 0)
(show-paren-mode 1)

;; whitespace mode
(setq whitespace-line-column 80
      whitespace-style '(face trailing lines))
(global-whitespace-mode t)

;;; Packages

;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
;;(package-refresh-contents)

;; auto-package-update
(package-install 'auto-package-update)
(require 'auto-package-update)
(auto-package-update-maybe)
(setq auto-package-update-delete-old-versions t)
(setq auto-package-update-hide-results t)

;; theme
(package-install 'zenburn-theme)
(require 'zenburn-theme)
(load-theme 'zenburn t)

;; xah-fly-keys
;(package-install 'xah-fly-keys)
;(setq xah-fly-use-control-key nil)
;(require 'xah-fly-keys)
;(xah-fly-keys-set-layout 'qwerty)
;(xah-fly-keys 1)

;; evil
(package-install 'evil)
(require 'evil)
(evil-mode 1)

;; which-key-mode
(package-install 'which-key)
(require 'which-key)
(which-key-mode)

;; flycheck
(package-install 'flycheck)
(require 'flycheck)
(global-flycheck-mode)

;; company-mode
(package-install 'company)
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)
(define-key company-active-map (kbd "TAB") 'company-complete-selection)
(define-key company-active-map (kbd "RET") 'company-complete-common)
(define-key company-active-map (kbd "<return>") 'company-complete-common)
(define-key company-active-map (kbd "<tab>") 'company-complete-selection)

;;; Programming languages

;; lsp-mode
(package-install 'lsp-mode)
(require 'lsp-mode)
(add-hook 'csharp-mode-hook #'lsp)

;; C language

;; CC Mode
(setq c-default-style '((c-mode . "linux"))
      c-syntactic-indentation nil
      c-tab-always-indent nil)

;; C# language

;; csharp-mode
(package-install 'csharp-mode)
(require 'csharp-mode)

;; omnisharp
(package-install 'omnisharp)
(add-hook 'csharp-mode-hook 'omnisharp-mode)

(eval-after-load
 'company
 '(add-to-list 'company-backends 'company-omnisharp))

(add-hook 'csharp-mode-hook #'company-mode)
(add-hook 'csharp-mode-hook #'flycheck-mode)

;; Emacs 27 will support a fill column indicator natively by way of the
;; buffer-local minor mode display-fill-column-indicator-mode and its
;; global counterpart global-display-fill-column-indicator-mode.


;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(zenburn-theme xah-fly-keys which-key flycheck auto-package-update)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
