(provide 'init-misc)

(define-key global-map (kbd "RET") 'newline-and-indent)

;;;;;;;;;;;;;;;;;;;;;;;;;;; SEMANTIC ;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'cc-mode)
(require 'semantic)

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(semantic-mode 1)

(semantic-add-system-include "/usr/local/boost" 'c++-mode)

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
(load-theme 'solarized-dark)
(sml/apply-theme 'dark)


;;;;;;;;;;;;;;;;;;;;;;;;;;; TERN ;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/modules/tern/emacs")
(add-to-list 'load-path "~/.emacs.d/modules/company-tern")
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(add-to-list 'company-backends 'company-tern)


;;;;;;;;;;;;;;;;;;;;;;;;;;; COPY-FILE-PATH ;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun copy-file-path (part)
  "Copy a part of the file path to kill-ring."
  (interactive "cpart (d=directory, p=full path, n=file name)?")
  (let ((file (buffer-file-name))
        (str))
    (when file
      (cond ((eq part ?d)
             (setq str (file-name-directory file)))
            ((eq part ?p)
             (setq str (expand-file-name file)))
            ((eq part ?n)
             (setq str (file-name-nondirectory file))))
      (kill-new str)
      nil)))

(global-set-key (kbd "C-c k d") (lambda () (interactive) (copy-file-path ?d)))
(global-set-key (kbd "C-c k p") (lambda () (interactive) (copy-file-path ?p)))
(global-set-key (kbd "C-c k n") (lambda () (interactive) (copy-file-path ?n)))
