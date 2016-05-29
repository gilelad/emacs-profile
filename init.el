    ;;; init.el --- user init file      -*- no-byte-compile: t -*-

(let ((file-name-handler-alist nil)     ; avoid regexp matching during startup
      (gc-cons-threshold 100000000))    ; avoid GC during startup

  (setenv "HTTP_PROXY" "http://proxy71.checkpoint.com:8080")
  (setenv "HTTPS_PROXY" "http://proxy71.checkpoint.com:8080")

  (setq custom-file (concat user-emacs-directory "custom.el"))
  (load custom-file)
  ;;--------------------------------------------------------
  ;; Load 3rd party packages and initialization scripts
  ;;--------------------------------------------------------
  (add-to-list 'load-path (concat user-emacs-directory "init")) ;; init scripts for 3rd party packages
  (add-to-list 'load-path (concat user-emacs-directory "lisp")) ;; my own lisp extensions

  (defun ge/require (name &optional opt)
    "require wrapper with 'done' message"
    (message "loading %s ... " name)
    (require name nil opt))

  (ge/require 'init-lisp-loader)

  (ge/require 'ge-utils)
  (ge/require 'init-evil)
  (ge/require 'init-helm)
  (ge/require 'init-helm-projectile)
  (ge/require 'init-repls)
  (ge/require 'init-prog)
  (ge/require 'init-nav)
  (ge/require 'init-vis)
  (ge/require 'init-misc)
  (ge/require 'init-keys)

  ;; site-specific initializations - ignored by git
  (when (file-directory-p (concat user-emacs-directory "mylocal"))
    (add-to-list 'load-path (concat user-emacs-directory "mylocal"))
    (ge/require 'init-mylocal t))

  )
