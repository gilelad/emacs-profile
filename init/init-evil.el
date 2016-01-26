(require 'evil)

(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
(define-key evil-normal-state-map (kbd "M-.") nil)  ;don't override "find-tag"

;; persist search highlights
(evil-search-highlight-persist 1)
(global-set-key (kbd "C-c C-k C-r") 'evil-search-highlight-persist-remove-all)

;; use emacs-mode instead of insert-mode, for extended navigation shortcuts
(add-hook 'evil-insert-state-entry-hook 'evil-emacs-state)
(define-key evil-emacs-state-map (kbd "<escape>") 'evil-normal-state)

;; Indent intelligently using "="
(defun ge/evil-indent-correctly ()
  ""
  (interactive)
  (if (use-region-p)
      (indent-region (region-beginning) (region-end))
    (indent-according-to-mode)))
(define-key evil-normal-state-map (kbd "=") 'ge/evil-indent-correctly)

;; activatition/deactivation shortcut
(global-set-key (kbd "<f5>") 'evil-local-mode)

;; commenting
(require 'evil-commentary)
(evil-commentary-mode)

;; don't move cursor back a step when exiting insert mode
(setq evil-move-cursor-back nil)

;; auto-activate evil on non-sepcial buffers
(require 'utils)
(defun auto-evil-local ()
  (if (and (not (string-match "^\\*" (buffer-name)))
           (not (string-match "^ " (buffer-name))))
      (evil-local-mode t)
    nil))
 (add-hook 'create-buffer-mode-hook 'auto-evil-local)

(provide 'init-evil)
