(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/init")
(setq my-packages '(el-get
		    evil
		    autopair
		    helm
		    neotree
		    undo-tree
		    ace-jump-mode
		    ace-window
				smooth-scrolling
		    gruber-darker-theme
				rainbow-delimiters
		    elpy))

(require 'init-el-get)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode 1)
 '(custom-enabled-themes (quote (gruber-darker)))
 '(custom-safe-themes (quote ("b07bd7f195d0385b76c8dffe76f7949e20c72b88379ceccce69dcb23b64c1f2b" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default)))
 '(default-frame-alist (quote ((fullscreen . maximized))))
 '(global-linum-mode t)
 '(inhibit-startup-screen t)
 '(line-number-mode t)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(show-paren-mode t)
 '(sml/theme (quote dark))
 '(tab-width 2)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(linum ((t (:height 0.75 :width normal))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "HotPink1"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "sandy brown"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "light goldenrod"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "lawn green"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "light sky blue"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "dodger blue"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "slate blue"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "magenta2")))))

(el-get 'sync 'smart-mode-line)

(require 'init-misc)
