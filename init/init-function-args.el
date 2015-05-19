(provide 'init-function-args)

(require 'function-args)

(fa-config-default)
(define-key c-mode-map  (kbd "<C-tab>") 'moo-complete)
(define-key c++-mode-map  (kbd "<C-tab>") 'moo-complete)
(setq-default moo-select-method 'helm)
