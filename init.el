(add-to-list 'load-path "~/.emacs.d/init")
(require 'init-packages)
(require 'init-elpy)
(require 'init-helm)
(require 'init-evil)
(require 'init-undo-tree)
(require 'init-ace-jump-mode)
(require 'init-rainbow-delimiters)
(require 'init-company)
(require 'init-smart-tab-mode)
(require 'init-helm-projectile)
(require 'init-js2-mode)
(require 'init-function-args)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode 1)
 '(company-c-headers-path-system
   (quote
    ("/usr/include/" "/usr/local/include/" "/usr/include/c++/4.9/")))
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(default-frame-alist (quote ((fullscreen . maximized))))
 '(elpy-interactive-python-command "ipython3")
 '(elpy-rpc-python-command "python3")
 '(frame-brackground-mode (quote dark))
 '(global-linum-mode t)
 '(helm-gtags-fuzzy-match t)
 '(helm-gtags-ignore-case t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(js2-basic-offset 2)
 '(line-number-mode t)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(moo-select-method (quote helm))
 '(projectile-completion-system (quote helm))
 '(projectile-global-mode t)
 '(show-paren-mode t)
 '(sml/no-confirm-load-theme t)
 '(sml/theme (quote dark))
 '(smooth-scroll-margin 3)
 '(smooth-scroll-strict-margins t)
 '(speedbar-default-position (quote left))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#181818" :foreground "#e4e4ef" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 125 :width normal :foundry "unknown" :family "Inconsolata"))))
 '(linum ((t (:height 0.75 :width normal))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "HotPink1"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "sandy brown"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "light goldenrod"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "lawn green"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "light sky blue"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "dodger blue"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "slate blue"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "magenta2")))))

(require 'init-sml)
(require 'init-misc)
