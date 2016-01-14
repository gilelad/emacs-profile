(provide 'init-company)

(require 'company)
(require 'cc-mode)
(add-hook 'after-init-hook 'global-company-mode)
(define-key c-mode-map  (kbd "<tab>") 'company-complete)
(define-key c++-mode-map  (kbd "<tab>") 'company-complete)
(setq company-backends '(company-semantic company-capf company-dabbrev-code company-gtags company-etags company-keywords company-files company-dabbrev))
