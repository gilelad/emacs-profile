;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;MISC VISUALS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq linum-delay t)
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

;; Must have these after loading themes
(setq evil-emacs-state-cursor '("#7eaefc" bar)
      evil-normal-state-cursor '("#4f3598" box)
      evil-visual-state-cursor '("#e6987a" box)
      evil-insert-state-cursor evil-emacs-state-cursor
      evil-replace-state-cursor '("red" box)
      evil-operator-state-cursor '("red" hollow))

(provide 'init-vis)
