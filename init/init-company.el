(provide 'init-company)

(require 'company)
(require 'cc-mode)
(add-hook 'after-init-hook 'global-company-mode)
(define-key c-mode-map  (kbd "<tab>") 'company-complete)
(define-key c++-mode-map  (kbd "<tab>") 'company-complete)
