;;;;;;;;;;;;;;;;;;;;;;;;;;; Emacs Server ;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'server)
(unless (server-running-p)
  (server-start))

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

(tabbar-mode)

(provide 'init-misc)
