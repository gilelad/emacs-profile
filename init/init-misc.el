(provide 'init-misc)

(define-key global-map (kbd "RET") 'newline-and-indent)

;----- SEMANTIC -----
(require 'cc-mode)
(require 'semantic)

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(semantic-mode 1)

(semantic-add-system-include "/usr/local/boost" 'c++-mode)

;----- WINMOVE -----
(defun ignore-error-wrapper (fn) ; from http://www.emacswiki.org/emacs/WindMove
  "Funtion return new function that ignore errors.
   The function wraps a function with `ignore-errors' macro."
  (lexical-let ((fn fn))
    (lambda ()
      (interactive)
      (ignore-errors
        (funcall fn)))))

(global-set-key (kbd "<S-left>") (ignore-error-wrapper 'windmove-left))
(global-set-key (kbd "<S-right>") (ignore-error-wrapper 'windmove-right))
(global-set-key (kbd "<S-up>") (ignore-error-wrapper 'windmove-up))
(global-set-key (kbd "<S-down>") (ignore-error-wrapper 'windmove-down))

;----- GDB -----
(setq
 gdb-many-windows t ;; use gdb-many-windows by default
 gdb-show-main t ;; Non-nil means display source file containing the main routine at startup
 )


;----- THEMES -----
(load-theme 'solarized-dark)
(sml/apply-theme 'dark)


;---- TERN ----
(add-to-list 'load-path "~/.emacs.d/modules/tern/emacs")
(add-to-list 'load-path "~/.emacs.d/modules/company-tern")
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(add-to-list 'company-backends 'company-tern)
