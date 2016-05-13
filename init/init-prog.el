;;;;;;;;;;;;;;;;;;;;;;;;;;; ELISP ;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-c C-k C-f C-f") 'find-function)
(global-set-key (kbd "C-c C-k C-f C-.") 'find-function-at-point)


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

;;;;;;;;;;;;;;;;;;;;;;;;;;; FUNCTION-ARGS (MOO) ;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'function-args)

(fa-config-default)
(setq-default moo-select-method 'helm)

;;;;;;;;;;;;;;;;;;;;;;;;;;; COMPANY ;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'company)
(require 'cc-mode)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay nil)
(setq company-backends '((company-gtags company-dabbrev-code company-capf company-dabbrev) company-etags company-keywords company-files))

;;;;;;;;;;;;;;;;;;;;;;;;;;; GDB ;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq
 gdb-many-windows t ;; use gdb-many-windows by default
 gdb-show-main t ;; Non-nil means display source file containing the main routine at startup
 )

;;;;;;;;;;;;;;;;;;;;;;;;;;; HIDESHOW ;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'c-mode-common-hook 'hs-minor-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;; TERN ;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (when (file-exists-p "~/.emacs.d/modules/tern/tern.el")
;;   (add-to-list 'load-path "~/.emacs.d/modules/tern/emacs")
;;   (add-to-list 'load-path "~/.emacs.d/modules/company-tern")
;;   (add-hook 'js2-mode-hook (lambda () (tern-mode t)))
;;   (add-to-list 'company-backends 'company-tern))

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

;;;;;;;;;;;;;;;;;;;;;;;;;;; LINE-NUMBERS ;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'prog-mode-hook 'linum-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;; RAINBOW DELIMITERS ;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;; ECB ;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (require 'init-ecb)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; MAGIT ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-x g") 'magit-status)

(provide 'init-prog)
