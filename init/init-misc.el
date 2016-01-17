;;;;;;;;;;;;;;;;;;;;;;;;;;; Emacs Server ;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'server)
(unless (server-running-p)
  (server-start))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;PERFORMANCE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Default value of 800000 means frequent small freezes.
;; 100000000 is the value used by spacemacs
(setq gc-cons-threshold 100000000)

;;;;;;;;;;;;;;;;;;;;;;;;;;; Easy navigation ;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-key global-map (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "S-SPC") 'forward-char)
(global-set-key (kbd "M-S-SPC") 'backward-char)

(global-set-key (kbd "C-c SPC") 'avy-goto-word-or-subword-1)

(global-set-key (kbd "<f10>") 'ibuffer)

;;;;;;;;;;;;;;;;;;;;;;;;;;; CEDET ;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'cc-mode)
(require 'semantic)
(require 'semantic/db)
(require 'semantic/db-global)

(set-default 'semantic-case-fold t)
(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-decoration-mode)
(semantic-mode 1)

(when (file-accessible-directory-p "/usr/local/boost")
  (semantic-add-system-include "/usr/local/boost" 'c++-mode))

(semanticdb-enable-gnu-global-databases 'c-mode t)
(semanticdb-enable-gnu-global-databases 'c++-mode t)
(setq semantic-c-obey-conditional-section-parsing-flag nil)

(require 'stickyfunc-enhance)

;;;;;;;;;;;;;;;;;;;;;;;;;;; WINMOVE ;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun ignore-error-wrapper (fn) ; from http://www.emacswiki.org/emacs/WindMove
  "Funtion return new function that ignore errors.
   The function wraps a function with `ignore-errors' macro."
  (lexical-let ((fn fn))
    (lambda ()
      (interactive)
      (ignore-errors
        (funcall fn)))))

(global-set-key (kbd "<S-left>") (ignore-error-wrapper 'windmove-left))
(global-set-key (kbd "<S-right>") (ignore-error-wrapper 'windmove-right))
(global-set-key (kbd "<S-up>") (ignore-error-wrapper 'windmove-up))
(global-set-key (kbd "<S-down>") (ignore-error-wrapper 'windmove-down))

;;;;;;;;;;;;;;;;;;;;;;;;;;; GDB ;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq
 gdb-many-windows t ;; use gdb-many-windows by default
 gdb-show-main t ;; Non-nil means display source file containing the main routine at startup
 )

;;;;;;;;;;;;;;;;;;;;;;;;;;; HIDESHOW ;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'c-mode-common-hook 'hs-minor-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;; TERN ;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (file-exists-p "~/.emacs.d/modules/tern/tern.el")
  (add-to-list 'load-path "~/.emacs.d/modules/tern/emacs")
  (add-to-list 'load-path "~/.emacs.d/modules/company-tern")
  (add-hook 'js2-mode-hook (lambda () (tern-mode t)))
  (add-to-list 'company-backends 'company-tern))


;;;;;;;;;;;;;;;;;;;;;;;;;;; WS-BUTLER ;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'ws-butler)
(ws-butler-global-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;; AUTOPAIR ;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'autopair)
(autopair-global-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;; ELPY ;;;;;;;;;;;;;;;;;;;;;;;;;;
(elpy-enable)
(elpy-use-ipython "ipython3")

;;;;;;;;;;;;;;;;;;;;;;;;;;; JS2-MODE ;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(setq-default js2-basic-offset 2)

;;;;;;;;;;;;;;;;;;;;;;;;;;; UNDO TREE ;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-undo-tree-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;; INDENTATION ;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'dtrt-indent)
(dtrt-indent-mode 1)
(setq dtrt-indent-verbosity 0)

(autoload 'smart-tabs-mode "smart-tabs-mode"
  "Intelligently indent with tabs, align with spaces!")
(autoload 'smart-tabs-mode-enable "smart-tabs-mode")
(autoload 'smart-tabs-advice "smart-tabs-mode")
(autoload 'smart-tabs-insinuate "smart-tabs-mode")

(smart-tabs-insinuate 'c 'c++ 'java 'javascript 'cperl 'python 'ruby 'nxml)

(add-hook 'c-mode-hook (lambda ()
                         (setq tab-width c-basic-offset)))

(add-hook 'python-mode-hook (lambda () (setq tab-width 4)))

;;;;;;;;;;;;;;;;;;;;;;;;;;; FILL-COLUMN ;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-hook 'prog-mode-hook 'auto-fill-mode)
(require 'fill-column-indicator)
(add-hook 'prog-mode-hook 'fci-mode)

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


;; Must have these after loading themes
(setq evil-emacs-state-cursor '("red" bar))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" box))
(setq evil-operator-state-cursor '("red" hollow))

;;;;;;;;;;;;;;;;;;;;;;;;;;; SMOOTH-SCROLLING ;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'smooth-scrolling)
(setq smooth-scroll-margin 5)
(setq scroll-preserve-screen-position t)
(setq auto-window-vscroll nil)
(setq scroll-conservatively 101)

;;;;;;;;;;;;;;;;;;;;;;;;;;; GOLDEN-RATIO ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'golden-ratio)
(golden-ratio-mode 1)

;; Take care of windmove as well
(defadvice windmove-do-window-select
	(around golden-ratio-resize-window)
  (prog1 ad-do-it (golden-ratio)))

(add-hook 'golden-ratio-mode-hook (lambda ()
									(ad-activate 'windmove-do-window-select)))

;;;;;;;;;;;;;;;;;;;;;;;;;; OPEN-JUNK-FILE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'open-junk-file)
(global-set-key (kbd "C-c C-j") 'open-junk-file)

(provide 'init-misc)
