(require 'package)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/") t)
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

;;clojure
(setq nrepl-popup-stacktraces nil)

(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)

(defun turn-on-rainbow () (rainbow-delimiters-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-rainbow)

(add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
(add-hook 'nrepl-interaction-mode-hook 'ac-nrepl-setup)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'nrepl-mode))

(add-hook 'nrepl-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'nrepl-interaction-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'nrepl-interaction-mode-hook 'nrepl-turn-on-eldoc-mode)
(add-hook 'nrepl-mode-hook 'subword-mode)
(add-hook 'nrepl-mode-hook 'paredit-mode)
(eval-after-load 'nrepl
  '(define-key nrepl-interaction-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc))

;; nrepl isn't based on comint
(add-hook 'nrepl-mode-hook
          (lambda () (setq show-trailing-whitespace nil)))

(add-hook 'clojure-mode 'enabled-midje-mode)

(add-to-list 'load-path "/Users/josephwilk/.emacs.d/elpa/midje-mode")
(require 'midje-mode)
(require 'clojure-jump-to-file)

(defun enabled-midje-mode () "Loads and enables midje mode"
  (add-to-list 'load-path "/Users/josephwilk/.emacs.d/elpa/midje-mode")
  (require 'midje-mode)
)

(load-theme 'adwaita)

(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
(remove-hook 'coding-hook 'turn-on-hl-line-mode)
