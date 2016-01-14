(provide 'init-helm-projectile)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
(add-to-list 'projectile-project-root-files ".projectile")
(setq projectile-enable-caching t)
(setq projectile-indexing-method 'alien)
