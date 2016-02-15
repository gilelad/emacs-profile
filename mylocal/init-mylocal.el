(setenv "HTTP_PROXY" "http://proxy71.checkpoint.com:8080")
(setenv "HTTPS_PROXY" "http://proxy71.checkpoint.com:8080")
(setq find-program "X:/bin/gnubin/gfind.exe")
(dolist (list '(helm-grep-ignored-directories projectile-globally-ignored-directories))
  (dolist (dir '("linux50" "linux30" "CMpub"))
	(add-to-list list dir)))

(setq projectile-indexing-method 'alien)

;; add CP-specific root files
(add-to-list 'projectile-project-root-files ".projectile")
(add-to-list 'projectile-project-root-files "module.conf")
(setq helm-ag-base-command "ag")

(add-to-list 'load-path "~/.emacs.d/mylocal/vc-clearcase/")
(require 'vc-clearcase)

(provide 'init-mylocal)
