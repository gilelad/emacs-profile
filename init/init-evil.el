(require 'evil)

;; persist search highlights
(evil-search-highlight-persist 1)

;; use emacs-mode instead of insert-mode, for extended navigation shortcuts
(add-hook 'evil-insert-state-entry-hook #'evil-emacs-state)
(define-key evil-emacs-state-map (kbd "<escape>") #'evil-normal-state)

;; Indent intelligently using "="
(defun ge/evil-indent-correctly ()
  ""
  (interactive)
  (if (use-region-p)
      (indent-region (region-beginning) (region-end))
    (indent-according-to-mode)))
(define-key evil-normal-state-map (kbd "=") #'ge/evil-indent-correctly)

; commenting
(require 'evil-commentary)
(evil-commentary-mode)

;; don't move cursor back a step when exiting insert mode
(setq evil-move-cursor-back nil)

;; auto-activate evil on non-sepcial buffers
(defun ge/auto-evil-local ()
  (if (and (not (string-match "^\\*" (buffer-name)))
           (not (string-match "^ " (buffer-name))))
      (evil-local-mode t)
    nil))
 (add-hook 'ge/create-buffer-mode-hook #'ge/auto-evil-local)

(provide 'init-evil)
