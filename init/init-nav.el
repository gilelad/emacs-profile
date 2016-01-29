;;;;;;;;;;;;;;;;;;;;;;;;;;; Easy navigation ;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-key global-map (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "S-SPC") 'forward-char)
(global-set-key (kbd "M-S-SPC") 'backward-char)
(global-set-key (kbd "C-c SPC") 'avy-goto-word-or-subword-1)
(global-set-key (kbd "<f10>") 'ibuffer)

;; Don't let org-mode steal our keyboard prefix
(require 'org)
(org-defkey org-mode-map "\C-c\C-k" nil)
(org-defkey org-mode-map "\C-ck" 'org-kill-note-or-show-branches)
(org-defkey org-mode-map (kbd "C-c SPC") nil)
(org-defkey org-mode-map (kbd "<S-left>") nil)
(org-defkey org-mode-map (kbd "<S-right>") nil)
(org-defkey org-mode-map (kbd "<S-up>") nil)
(org-defkey org-mode-map (kbd "<S-down>") nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;; WINDMOVE ;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'ge-utils) ;; for ge/ignore-error-wrapper

(global-set-key (kbd "<S-left>") (ge/ignore-error-wrapper 'windmove-left))
(global-set-key (kbd "<S-right>") (ge/ignore-error-wrapper 'windmove-right))
(global-set-key (kbd "<S-up>") (ge/ignore-error-wrapper 'windmove-up))
(global-set-key (kbd "<S-down>") (ge/ignore-error-wrapper 'windmove-down))

;;;;;;;;;;;;;;;;;;;;;;;;;;; GOLDEN-RATIO ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'golden-ratio)

;;Take care of windmove as well
(defun ge/after-windmove-golden (orig &rest args)
  (golden-ratio))

(add-hook 'golden-ratio-mode-hook
          (lambda ()
            (if golden-ratio-mode
                (advice-add 'windmove-do-window-select :after #'ge/after-windmove-golden)
              (advice-remove 'windmove-do-window-select #'ge/after-windmove-golden))))

(golden-ratio-mode 1)

(provide 'init-nav)
