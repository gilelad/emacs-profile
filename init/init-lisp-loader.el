(add-to-list 'load-path "~/.emacs.d/lisp") ;; my own lisp extensions

;; site-specific initializations - ignored by git
(when (nth 0 (file-attributes "~/.emacs.d/mylocal")) ; when directory exits
  (add-to-list 'load-path "~/.emacs.d/mylocal"))

;; packages
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("melpa" . "http://melpa.org/packages/")))
(package-initialize)

;; auto-compile
(setq load-prefer-newer t)
(require 'auto-compile)
(auto-compile-on-load-mode)
(auto-compile-on-save-mode)
(setq auto-compile-display-buffer nil)
(setq auto-compile-mode-line-counter t)

(provide 'init-lisp-loader)
