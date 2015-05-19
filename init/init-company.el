(provide 'init-company)

(require 'company)
(require 'cc-mode)
(add-hook 'after-init-hook 'global-company-mode)
(add-to-list 'company-backends 'company-c-headers)
(define-key c-mode-map  (kbd "<tab>") 'company-complete)
(define-key c++-mode-map  (kbd "<tab>") 'company-complete)
