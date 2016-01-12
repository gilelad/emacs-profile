(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-default-style
   (quote
	((c-mode . "linux")
	 (c++-mode . "stroustrup")
	 (java-mode . "java")
	 (awk-mode . "awk")
	 (other . "gnu"))))
 '(column-number-mode 1)
 '(custom-safe-themes
   (quote
	("d8cec8251169ccfe192aa87d69b9378bc81599330f31498f85deaef633721302" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(default-frame-alist (quote ((fullscreen . maximized))))
 '(desktop-save-mode t)
 '(ecb-options-version "2.40")
 '(fci-rule-color "RoyalBlue4")
 '(fill-column 80)
 '(frame-background-mode (quote dark))
 '(global-linum-mode t)
 '(inhibit-startup-screen t)
 '(line-number-mode t)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(python-shell-interpreter-args "-i --colors=NoColor")
 '(show-paren-mode nil)
 '(smooth-scroll-strict-margins t)
 '(speedbar-default-position (quote left))
 '(speedbar-show-unknown-files t)
 '(tab-width 4)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#002b36" :foreground "#839496" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 135 :width normal :foundry "unknown" :family "Anonymous Pro"))))
 '(ecb-default-highlight-face ((t (:background "gray16"))))
 '(linum ((t (:height 0.75 :width normal))))
 '(mode-line ((t (:background "black" :foreground "gray60" :inverse-video nil :box nil :family "FreeSans"))))
 '(mode-line-inactive ((t (:background "#404045" :foreground "gray60" :inverse-video nil :box nil :family "FreeSans"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "HotPink1"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "sandy brown"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "light goldenrod"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "lawn green"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "light sky blue"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "dodger blue"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "slate blue"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "magenta2"))))
 '(show-paren-match ((t (:inverse-video t :weight bold))))
 '(whitespace-tab ((t (:foreground "#839496")))))
;; -----------End of Customize settings--------------

;;--------------------------------------------------------
;; Load 3rd party packages and initialization scripts
;;--------------------------------------------------------

(add-to-list 'load-path "~/.emacs.d/init") ;; init scripts for 3rd party packages
(add-to-list 'load-path "~/.emacs.d/lisp") ;; my own lisp extensions

(require 'init-packages)
(require 'init-helm)
(require 'init-evil)
(require 'init-ace-jump-mode)
(require 'init-rainbow-delimiters)
(require 'init-company)
(require 'init-helm-projectile)
(require 'init-function-args)
(require 'init-misc)
(require 'init-ecb)
(require 'utils)

;; site-specific initializations - ignored by git
(when (file-exists-p "~/.emacs.d/mylocal/init-mylocal.el")
  (add-to-list 'load-path "~/.emacs.d/mylocal")
  (require 'init-mylocal))
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
