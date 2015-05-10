(provide 'init-function-args)

(require 'function-args)

(fa-config-default)
(set-default 'semantic-case-fold t)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(define-key c-mode-map  (kbd "<C-tab>") 'moo-complete)
(define-key c++-mode-map  (kbd "<C-tab>") 'moo-complete)
(setq-default moo-select-method 'helm)
