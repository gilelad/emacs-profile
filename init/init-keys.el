(define-prefix-command 'ge/private-map)
(global-set-key (kbd "C-c k") #'ge/private-map)

(define-key ge/private-map (kbd "p d") (lambda () (interactive) (ge/copy-file-path ?d)))
(define-key ge/private-map (kbd "p p") (lambda () (interactive) (ge/copy-file-path ?p)))
(define-key ge/private-map (kbd "p n") (lambda () (interactive) (ge/copy-file-path ?n)))

(define-key ge/private-map (kbd "f f") #'find-function)
(define-key ge/private-map (kbd "f .") #'find-function-at-point)

(define-key ge/private-map (kbd "h r") #'evil-search-highlight-persist-remove-all)

(define-key ge/private-map (kbd "k b") (lambda () (interactive) (kill-buffer (current-buffer))))
(define-key ge/private-map (kbd "k f") #'ge/kill-this-buffer-and-frame)
(define-key ge/private-map (kbd "k w") #'ge/kill-this-buffer-and-window)

(define-key ge/private-map (kbd ". k") #'ge/kill-ring-save-symbol-at-point)

;;;;;;;;;;;;;;;;;;;;;;;;;;; WINDMOVE ;;;;;;;;;;;;;;;;;;;;;;;;;;

(define-key ge/private-map (kbd "w h") (ge/ignore-error-wrapper #'windmove-left))
(define-key ge/private-map (kbd "w l") (ge/ignore-error-wrapper #'windmove-right))
(define-key ge/private-map (kbd "w k") (ge/ignore-error-wrapper #'windmove-up))
(define-key ge/private-map (kbd "w j") (ge/ignore-error-wrapper #'windmove-down))

(require 'open-junk-file)
(require 'magit)
(define-key ge/private-map (kbd "o g") #'magit-status)
(define-key ge/private-map (kbd "o j") #'open-junk-file)

;;;;;;; TOGGLES ;;;;;;;;
;; Adapted from http://endlessparentheses.com/the-toggle-map-and-wizardry.html
(define-prefix-command 'ge/toggle-map)
(define-key ge/private-map "t" #'ge/toggle-map)
(define-key ge/toggle-map "c" #'column-number-mode)
(define-key ge/toggle-map "d" #'toggle-debug-on-error)
(define-key ge/toggle-map "e" #'toggle-debug-on-error)
(define-key ge/toggle-map "f" #'auto-fill-mode)
(define-key ge/toggle-map "l" #'toggle-truncate-lines)
(define-key ge/toggle-map "n" #'ge/narrow-or-widen-dwim)
(define-key ge/toggle-map "q" #'toggle-debug-on-quit)
(define-key ge/toggle-map "t" #'ge/toggle-theme)
;;; Generalized version of `read-only-mode'.
(define-key ge/toggle-map "r" #'dired-toggle-read-only)
(autoload 'dired-toggle-read-only "dired" nil t)
(define-key ge/toggle-map "w" #'whitespace-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;; Easy navigation ;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "RET") #'newline-and-indent)
(global-set-key (kbd "S-SPC") #'forward-char)
(global-set-key (kbd "M-S-SPC") #'backward-char)
(global-set-key (kbd "C-c SPC") #'avy-goto-word-or-subword-1)

(require 'org)
(org-defkey org-mode-map (kbd "C-c SPC") nil) ;; don't shadow
                                              ;; avy-goto-word-or-subword-1

(require 'tabbar)
(global-set-key (kbd "<C-tab>") #'tabbar-forward)
(global-set-key (kbd "ESC <right>") #'tabbar-forward)
(global-set-key (kbd "<M-right>") #'tabbar-forward)
(global-set-key (kbd "<C-S-tab>") #'tabbar-backward)
(global-set-key (kbd "ESC <left>") #'tabbar-backward)
(global-set-key (kbd "<M-left>") #'tabbar-backward)
(global-set-key (kbd "<backtab>") #'tabbar-backward)
(global-set-key (kbd "C-c <up>") #'tabbar-backward-group)
(global-set-key (kbd "C-c <down>") #'tabbar-forward-group)
(global-set-key (kbd "C-<f10>") #'tabbar-local-mode)

(require 'ibuffer)
(global-set-key (kbd "<f10>") #'ibuffer)

;;;;;;;; HELM ;;;;;;;;;;;;;;
(require 'helm-config)
(require 'helm-misc)
(global-set-key (kbd "C-c h") #'helm-command-prefix)
(global-unset-key (kbd "C-x c"))
(define-key helm-map (kbd "<tab>") #'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") #'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  #'helm-select-action) ; list actions using C-z
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "M-y") #'helm-show-kill-ring)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(global-set-key (kbd "C-x b") #'helm-mini)
(global-set-key (kbd "C-c h k") #'helm-descbinds)
(global-set-key (kbd "C-c h y") #'helm-yas-complete)

;;;;;;;; HELM-GTAGS ;;;;;;;;
(require 'helm-gtags)
(setq helm-gtags-prefix-key (kbd "C-c g"))
(define-key helm-gtags-mode-map (kbd "C-c g a") #'helm-gtags-tags-in-this-function)
(define-key helm-gtags-mode-map (kbd "C-c g r") #'helm-gtags-find-rtag)
(define-key helm-gtags-mode-map (kbd "C-c g s") #'helm-gtags-find-symbol)
(define-key helm-gtags-mode-map (kbd "C-c g u") #'helm-gtags-update-tags)
(define-key helm-gtags-mode-map (kbd "C-j") #'helm-gtags-select)
(define-key helm-gtags-mode-map (kbd "M-.") #'helm-gtags-dwim)
(define-key helm-gtags-mode-map (kbd "M-,") #'helm-gtags-pop-stack)
(define-key helm-gtags-mode-map (kbd "C-c <") #'helm-gtags-previous-history)
(define-key helm-gtags-mode-map (kbd "C-c >") #'helm-gtags-next-history)

;;;;;;; HELM-COMPANY ;;;;;;;
(when (functionp 'helm-company)
  (define-key lisp-interaction-mode-map (kbd "C-M-i") nil) ; don't shadow
  (define-key emacs-lisp-mode-map (kbd "C-M-i") nil)       ; don't shadow
  (global-set-key (kbd "C-M-i") #'helm-company)
  (eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") #'helm-company)
     (define-key company-active-map (kbd "C-:") #'helm-company))))

;;;;;;; ECB ;;;;;;;;;
(when (fboundp 'ge/ecb-toggle)
  (global-set-key (kbd "<f6>") #'ge/ecb-toggle))

;;;;;;; EVIL ;;;;;;;;
(require 'evil)
(global-set-key (kbd "<f5>") #'evil-local-mode) ; activatition/deactivation
                                                ; shortcut

(define-key evil-normal-state-map (kbd "j") #'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") #'evil-previous-visual-line)
(define-key evil-normal-state-map (kbd "M-.") nil)  ;; don't shadow
										            ;;"helm-gtags-dwim"
(define-key evil-emacs-state-map (kbd "M-n") #'evil-normal-state)
(define-key evil-insert-state-map (kbd "M-n") #'evil-normal-state)
(define-key evil-replace-state-map (kbd "M-n") #'evil-normal-state)
(define-key evil-visual-state-map (kbd "M-n") #'evil-normal-state)

;;;;;;; SWIPER ;;;;;;;;
(global-set-key (kbd "C-s") #'swiper)
(global-set-key (kbd "M-s .") (lambda ()
								(interactive)
								(swiper (symbol-name (symbol-at-point)))))

(provide 'init-keys)
