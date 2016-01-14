(provide 'init-helm-projectile)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(setq projectile-enable-caching t)
;; remove tags files from list of root files
(setq projectile-project-root-files
	  (remove "TAGS" (remove
					  "GTAGS"
					  projectile-project-root-files)))
