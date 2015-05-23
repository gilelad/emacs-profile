;; init ECB only if module exists
(when (file-exists-p "~/.emacs.d/modules/ecb/ecb.el")
  (add-to-list 'load-path "~/.emacs.d/modules/ecb")
  (require 'ecb)

  (setq ecb-tip-of-the-day nil)  ;; disble tip of the day at startup

  ;; map <f6> to toggle ECB
  (defun gile-ecb-toggle ()
    "toggle ECB. Activates ECB if off. Toggles ECB window display if on."
    (interactive)
    (if ecb-minor-mode
        (ecb-toggle-ecb-windows)
      (ecb-activate)))
  (global-set-key (kbd "<f6>") 'gile-ecb-toggle))

(provide 'init-ecb)
