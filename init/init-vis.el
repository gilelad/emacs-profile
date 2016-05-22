;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;MISC VISUALS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-theme 'spacemacs-dark)
(global-hl-line-mode)
(setq-default vertical-scroll-bar nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;; MODE-LINE ;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'powerline)
(require 'powerline-evil)

(require 'airline-themes)
;; airline seperators
(setq airline-utf-glyph-separator-left      #xe0b0
      airline-utf-glyph-separator-right     #xe0b2
      airline-utf-glyph-subseparator-left   #xe0b1
      airline-utf-glyph-subseparator-right  #xe0b3
      airline-utf-glyph-branch              #xe0a0
      airline-utf-glyph-readonly            #xe0a2
      airline-utf-glyph-linenumber          #xe0a1)

(load-theme 'airline-kolor)
;; (unless (display-graphic-p)
;;   (require 'evil-terminal-cursor-changer))
;; Must have these after loading themes
(setq evil-emacs-state-cursor '("color-69" bar)
      evil-normal-state-cursor '("color-61" box)
      evil-visual-state-cursor '("yellow" box)
      evil-insert-state-cursor evil-emacs-state-cursor
      evil-replace-state-cursor '("red" hbar)
      evil-operator-state-cursor '("red" hollow))

(provide 'init-vis)
