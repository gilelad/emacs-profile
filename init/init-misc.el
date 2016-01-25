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

;;;;;;;;;;;;;;;;;;;;;;;;;;; MODE-LINE ;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'powerline)
(require 'powerline-evil)
(load-theme 'airline-kolor)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;MISC VISUALS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'prog-mode-hook 'linum-mode)
(setq linum-delay t)
(load-theme 'spacemacs-dark)
(global-hl-line-mode)
(setq-default vertical-scroll-bar nil)


(require 'airline-themes)
(load-theme 'airline-kolor)
;; airline seperators
(setq airline-utf-glyph-separator-left      #xe0b0
      airline-utf-glyph-separator-right     #xe0b2
      airline-utf-glyph-subseparator-left   #xe0b1
      airline-utf-glyph-subseparator-right  #xe0b3
      airline-utf-glyph-branch              #xe0a0
      airline-utf-glyph-readonly            #xe0a2
      airline-utf-glyph-linenumber          #xe0a1)

;; Must have these after loading themes
(setq evil-emacs-state-cursor '("#7eaefc" bar)
      evil-normal-state-cursor '("#4f3598" box)
      evil-visual-state-cursor '("#e6987a" box)
      evil-insert-state-cursor evil-emacs-state-cursor
      evil-replace-state-cursor '("red" box)
      evil-operator-state-cursor '("red" hollow))

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
