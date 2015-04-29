(provide 'init-misc)

(require 'cc-mode)
(require 'semantic)

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)

(semantic-add-system-include "~/linux/kernel")
(semantic-add-system-include "~/linux/include")

(semantic-mode 1)
(define-key global-map (kbd "RET") 'newline-and-indent)

