;;;;;;;;;;;;;;;;;;;;;;;;;;; Emacs Server ;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'server)
(unless (server-running-p)
  (server-start))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;PERFORMANCE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Default value of 800000 means frequent small freezes.
;; 100000000 is the value used by spacemacs
(setq gc-cons-threshold 100000000)

;;;;;;;;;;;;;;;;;;;;;;;;;;; UNDO TREE ;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-undo-tree-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;; SMOOTH-SCROLLING ;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'smooth-scrolling)
(setq smooth-scroll-margin 5)
(setq scroll-preserve-screen-position t)
(setq auto-window-vscroll nil)
(setq scroll-conservatively 101)

;;;;;;;;;;;;;;;;;;;;;;;;;; OPEN-JUNK-FILE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'open-junk-file)
(global-set-key (kbd "C-c C-j") 'open-junk-file)

(provide 'init-misc)
