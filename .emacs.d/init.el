(require 'package)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(setq nrepl-tab-command 'indent-for-tab-command)

(setq nrepl-popup-stacktraces nil)
(add-to-list 'same-window-buffer-names "*nrepl*")

(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)

;; whitespace
(global-set-key (kbd "C-|") 'whitespace-cleanup)
(add-hook 'after-save-hook 'whitespace-cleanup)

; git-gutter
(add-hook 'clojure-mode-hook 'git-gutter-mode)
(setq git-gutter:lighter " GitGutter")

;;clojure
(add-to-list 'load-path "/Users/josephwilk/.emacs.d/elpa/nrepl")

(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)

(defun turn-on-rainbow () (rainbow-delimiters-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-rainbow)

;; nrepl isn't based on comint
(add-hook 'nrepl-mode-hook
          (lambda () (setq show-trailing-whitespace nil)))

(add-hook 'nrepl-mode-hook 'paredit-mode)
(add-hook 'nrepl-mode-hook 'rainbow-delimiters-mode)
(setq nrepl-popup-stacktraces nil)

(add-hook 'clojure-mode 'enabled-midje-mode)

(add-to-list 'load-path "/Users/josephwilk/.emacs.d/elpa/midje-mode")
(require 'midje-mode)
(require 'clojure-jump-to-file)

(defun enabled-midje-mode () "Loads and enables midje mode"
  (add-to-list 'load-path "/Users/josephwilk/.emacs.d/elpa/midje-mode")
  (require 'midje-mode)) 

(load-theme 'adwaita)

(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
(remove-hook 'coding-hook 'turn-on-hl-line-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("1760322f987b57884e38f4076ac586c27566a1d7ed421b67843c8c98a1501e3a" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
