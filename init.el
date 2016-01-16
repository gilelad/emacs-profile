(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
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
	("977513781c8dd86f4f0a04dbf518df5ba496da42b71173368b305478703eea42" "a0bbe4dc3513cbd049eb95f79c467b6f19dc42979fec27a0481bb6980bd8d405" "86a731bda96ed5ed69980b4cbafe45614ec3c288da3b773e4585101e7ece40d2" "133222702a3c75d16ea9c50743f66b987a7209fb8b964f2c0938a816a83379a0" "e8586a76a96fd322ccb644ca0c3a1e4f4ca071ccfdb0f19bef90c4040d5d3841" "beeb5ac6b65fcccfe434071d4624ff0308b5968bf2f0c01b567d212bcaf66054" "aab598c4d024d544b4e8b356a95ca693afa9de000b154bd2f86eed68c9e75557" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "d9a0d14596e3d0bdb81f052fa9b99741dcd239af402d42e35f80822e05557cb2" "fbcdb6b7890d0ec1708fa21ab08eb0cc16a8b7611bb6517b722eba3891dfc9dd" "d8cec8251169ccfe192aa87d69b9378bc81599330f31498f85deaef633721302" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(default-frame-alist (quote ((fullscreen . maximized))))
 '(desktop-save-mode t)
 '(ecb-options-version "2.40")
 '(fci-rule-color "RoyalBlue4")
 '(fill-column 80)
 '(frame-background-mode (quote dark))
 '(inhibit-startup-screen t)
 '(line-number-mode t)
 '(linum-delay t)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(python-shell-interpreter-args "-i --colors=NoColor")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-default-highlight-face ((t (:background "gray16"))))
 '(linum ((t (:height 0.75 :width normal))))
 '(mode-line ((t (:family "FreeSans"))))
 '(mode-line-inactive ((t (:family "FreeSans"))))
 '(rainbow-delimiters-depth-1-face ((t (:inherit outline-1 :foreground "RoyalBlue1"))))
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
(require 'init-rainbow-delimiters)
(require 'init-company)
(require 'init-helm-projectile)
(require 'init-function-args)
(require 'init-misc)
(require 'init-ecb)
(require 'utils)

;; ;; site-specific initializations - ignored by git
;; (when (file-exists-p "~/.emacs.d/mylocal/init-mylocal.el")
;;   (add-to-list 'load-path "~/.emacs.d/mylocal")

;;   (require 'init-mylocal))
;; (put 'narrow-to-region 'disabled nil)
;; (put 'upcase-region 'disabled nil)
;; (put 'downcase-region 'disabled nil)
