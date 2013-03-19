(require 'package)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

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
(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)

(defun turn-on-rainbow () (rainbow-delimiters-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-rainbow)

(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'nrepl-mode))

;; nrepl isn't based on comint
(add-hook 'clojure-mode 'enabled-midje-mode)

(add-to-list 'load-path "/Users/josephwilk/.emacs.d/elpa/midje-mode")
(require 'midje-mode)
(require 'clojure-jump-to-file)

(defun enabled-midje-mode () "Loads and enables midje mode"
  (add-to-list 'load-path "/Users/josephwilk/.emacs.d/elpa/midje-mode")
  (require 'midje-mode)
)


(add-hook 'nrepl-mode-hook 'rainbow-delimiters-mode)
(add-hook 'nrepl-mode-hook 'paredit-mode)
(add-hook 'nrepl-interaction-mode-hook 'nrepl-turn-on-eldoc-mode)
(setq nrepl-hide-special-buffers t)
(setq nrepl-popup-stacktraces nil)
(setq nrepl-popup-stacktraces-in-repl t)
(add-to-list 'same-window-buffer-names "*nrepl*")


(load-theme 'adwaita)

(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
(remove-hook 'coding-hook 'turn-on-hl-line-mode)
