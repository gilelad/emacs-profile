(provide 'init-misc)

(define-key global-map (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "S-SPC") 'forward-char)
(global-set-key (kbd "M-S-SPC") 'backward-char)

(add-hook 'python-mode-hook (lambda () (setq tab-width 4)))

;;;;;;;;;;;;;;;;;;;;;;;;;;; SEMANTIC ;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'cc-mode)
(require 'semantic)
(require 'semantic/db)

(set-default 'semantic-case-fold t)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-minor-mode)
(semantic-mode 1)

(when (file-accessible-directory-p "/usr/local/boost")
  (semantic-add-system-include "/usr/local/boost" 'c++-mode))

(semanticdb-enable-gnu-global-databases 'c-mode t)
(semanticdb-enable-gnu-global-databases 'c++-mode t)
(setq semantic-c-obey-conditional-section-parsing-flag nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;; WINMOVE ;;;;;;;;;;;;;;;;;;;;;;;;;;
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

;;;;;;;;;;;;;;;;;;;;;;;;;;; GDB ;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq
 gdb-many-windows t ;; use gdb-many-windows by default
 gdb-show-main t ;; Non-nil means display source file containing the main routine at startup
 )


;;;;;;;;;;;;;;;;;;;;;;;;;;; THEMES ;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'custom-theme-load-path "~/.emacs.d/modules/emacs-color-theme-solarized")
(load-theme 'solarized t)
(sml/apply-theme 'dark)


;;;;;;;;;;;;;;;;;;;;;;;;;;; TERN ;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (file-exists-p "~/.emacs.d/modules/tern/tern.el")
  (add-to-list 'load-path "~/.emacs.d/modules/tern/emacs")
  (add-to-list 'load-path "~/.emacs.d/modules/company-tern")
  (add-hook 'js2-mode-hook (lambda () (tern-mode t)))
  (add-to-list 'company-backends 'company-tern))


