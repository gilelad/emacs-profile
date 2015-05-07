(define-minor-mode create-buffer-mode
  "empty minor mode designed to provide a create-buffer hook")

(define-globalized-minor-mode global-create-buffer-mode
  create-buffer-mode
  (lambda ()
    (create-buffer-mode t)))
(global-create-buffer-mode t)

(provide 'create-buffer-hook)
