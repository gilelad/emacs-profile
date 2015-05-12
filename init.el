(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode 1)
 '(custom-safe-themes
   (quote
    ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(default-frame-alist (quote ((fullscreen . maximized))))
 '(frame-background-mode (quote dark))
 '(global-linum-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(line-number-mode t)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(show-paren-mode t)
 '(smooth-scroll-margin 3)
 '(smooth-scroll-strict-margins t)
 '(speedbar-default-position (quote left))
 '(tab-width 4)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#002b36" :foreground "#839496" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 121 :width normal :foundry "unknown" :family "anonymous pro"))))
 '(linum ((t (:height 0.75 :width normal))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "HotPink1"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "sandy brown"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "light goldenrod"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "lawn green"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "light sky blue"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "dodger blue"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "slate blue"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "magenta2"))))
 '(show-paren-match ((t (:inverse-video t :weight bold)))))

(add-to-list 'load-path "~/.emacs.d/init")
(add-to-list 'load-path "~/.emacs.d/lisp")
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
(require 'init-company-c-headers)
(require 'init-sml)
(require 'init-misc)
(require 'init-autopair)
(require 'utils)
