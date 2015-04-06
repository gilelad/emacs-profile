(provide 'init-evil)
(require 'evil)
(evil-mode 1)

(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))

(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

(define-key evil-insert-state-map (kbd "M-j") 'evil-next-visual-line)
(define-key evil-insert-state-map (kbd "M-k") 'evil-previous-visual-line)
(define-key evil-insert-state-map (kbd "M-h") 'evil-backward-char)
(define-key evil-insert-state-map (kbd "M-l") 'evil-forward-char)
