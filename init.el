    ;;; init.el --- user init file      -*- no-byte-compile: t -*-

(setenv "HTTP_PROXY" "http://proxy51.checkpoint.com:8080")
(setenv "HTTPS_PROXY" "http://prox51.checkpoint.com:8080")

(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file)
;;--------------------------------------------------------
;; Load 3rd party packages and initialization scripts
;;--------------------------------------------------------
(add-to-list 'load-path (concat user-emacs-directory "init")) ;; init scripts for 3rd party packages
(add-to-list 'load-path (concat user-emacs-directory "lisp")) ;; my own lisp extensions

(require 'init-lisp-loader)

(require 'ge-utils)
(require 'init-evil)
(require 'init-helm)
(require 'init-helm-projectile)
(require 'init-repls)
(require 'init-prog)
(require 'init-nav)
(require 'init-vis)
(require 'init-misc)
(require 'init-keys)

;; site-specific initializations - ignored by git
(when (file-directory-p (concat user-emacs-directory "mylocal"))
  (add-to-list 'load-path (concat user-emacs-directory "mylocal"))
  (require 'init-mylocal nil t))
