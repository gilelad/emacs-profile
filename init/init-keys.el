(require 'org)

;;;;;;;;;;;;;;;;;;;;;;;;;;; PATHS ;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-c k p d") (lambda () (interactive) (ge/copy-file-path ?d)))
(global-set-key (kbd "C-c k p p") (lambda () (interactive) (ge/copy-file-path ?p)))
(global-set-key (kbd "C-c k p n") (lambda () (interactive) (ge/copy-file-path ?n)))

(global-set-key (kbd "C-c k f f") 'find-function)

;;;;;;;;;;;;;;;;;;;;;;;;;;; JUST POINTY THINGS ;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-c k . k") 'ge/kill-ring-save-symbol-at-point)
(global-set-key (kbd "C-c k . s") (lambda ()
									(interactive)
									(swiper (symbol-name (symbol-at-point)))))
(global-set-key (kbd "C-c k . f") 'find-function-at-point)

(global-set-key (kbd "C-c k h r") 'evil-search-highlight-persist-remove-all)

;;;;;;;;;;;;;;;;;;;;;;;;;;; KILL BUFFER/WINDOW/FRAME ;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-c k k b") (lambda () (interactive) (kill-buffer (current-buffer))))
(global-set-key (kbd "C-c k k f") 'ge/kill-this-buffer-and-frame)
(global-set-key (kbd "C-c k k w") 'ge/kill-this-buffer-and-window)

(global-set-key (kbd "C-c k . k") 'ge/kill-ring-save-symbol-at-point)

;;;;;;;;;;;;;;;;;;;;;;;;;;; WINDMOVE ;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-c k w h") (ge/ignore-error-wrapper 'windmove-left))
(global-set-key (kbd "C-c k w l") (ge/ignore-error-wrapper 'windmove-right))
(global-set-key (kbd "C-c k w k") (ge/ignore-error-wrapper 'windmove-up))
(global-set-key (kbd "C-c k w j") (ge/ignore-error-wrapper 'windmove-down))

;;;;;;;;;;;;;;;;;;;;;;;;;;; Easy navigation ;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "S-SPC") 'forward-char)
(global-set-key (kbd "M-S-SPC") 'backward-char)
(global-set-key (kbd "C-c SPC") 'avy-goto-word-or-subword-1)
(org-defkey org-mode-map (kbd "C-c SPC") nil) ;; don't shadow
                                              ;; avy-goto-word-or-subword-1
(global-set-key (kbd "<C-tab>") 'tabbar-forward)
(global-set-key (kbd "<C-S-tab>") 'tabbar-backward)

(global-set-key (kbd "<f10>") 'ibuffer)

(require 'open-junk-file)
(require 'magit)
(global-set-key (kbd "C-c k o g") 'magit-status)
(global-set-key (kbd "C-c k o j") 'open-junk-file)

;;;;;;;; HELM ;;;;;;;;;;;;;;
(require 'helm-config)
(require 'helm-misc)
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-c h k") 'helm-descbinds)
(global-set-key (kbd "C-c h y") 'helm-yas-complete)

;;;;;;;; GGTAGS ;;;;;;;;
(require 'ggtags)
(define-key ggtags-mode-map (kbd "C-c g u") 'ggtags-update-tags)
(define-key ggtags-mode-map (kbd "M-,") 'ggtags-prev-mark)

;;;;;;; HELM-COMPANY ;;;;;;;
(when (functionp 'helm-company)
  (define-key lisp-interaction-mode-map (kbd "C-M-i") nil) ; don't shadow
  (define-key emacs-lisp-mode-map (kbd "C-M-i") nil)       ; don't shadow
  (global-set-key (kbd "C-M-i") 'helm-company)
  (eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") 'helm-company)
     (define-key company-active-map (kbd "C-:") 'helm-company))))

;;;;;;; ECB ;;;;;;;;;
(when (functionp 'ge/ecb-toggle)
  (global-set-key (kbd "<f6>") 'ge/ecb-toggle))

;;;;;;; EVIL ;;;;;;;;
(require 'evil)
(global-set-key (kbd "<f5>") 'evil-local-mode) ;; activatition/deactivation
                                               ;; shortcut

(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
(define-key evil-normal-state-map (kbd "M-.") nil)  ;; don't shadow
										            ;;"helm-gtags-dwim"
(define-key evil-emacs-state-map (kbd "M-n") 'evil-normal-state)
(define-key evil-insert-state-map (kbd "M-n") 'evil-normal-state)
(define-key evil-replace-state-map (kbd "M-n") 'evil-normal-state)
(define-key evil-visual-state-map (kbd "M-n") 'evil-normal-state)

;;;;;;; SWIPER ;;;;;;;;
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "M-s .") (lambda ()
								(interactive)
								(swiper (symbol-name (symbol-at-point)))))

(provide 'init-keys)
