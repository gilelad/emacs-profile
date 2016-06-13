;;;;;;;;;;;;;;;;;;;;;;;;;;; Emacs Server ;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'server)
(when (not (string= "root" user-login-name))
  (setq server-name user-login-name)
  (unless (server-running-p)
    (server-start)))

;;;;;;;;;;;;;;;;;;;;;;;;;;; UNDO TREE ;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-undo-tree-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;; SMOOTH-SCROLLING ;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'smooth-scrolling)
(setq smooth-scroll-margin 5)
(setq scroll-preserve-screen-position t)
(setq auto-window-vscroll nil)
(setq scroll-conservatively 101)

;;;;;;;;;;;;;;;;;;;;;;;;;;;; AUTO-REVERT ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-auto-revert-mode)

(require 'magit)
(remove-hook 'after-init-hook #' magit-startup-asserts)

(provide 'init-misc)
