;; packages
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("melpa" . "http://melpa.org/packages/")))
(package-initialize)

(defun ge/require-package (package)
  (setq-default highlight-tabs t)
  "Install given PACKAGE."
  (unless (package-installed-p package)
    (unless (assoc package package-archive-contents)
      (package-refresh-contents))
    (package-install package)))

(setq ge/package-list '(
;;=============== START OF REQUIRED PACKAGES ==============
						ag
						airline-themes
						auto-compile
						autopair
						avy
						clean-aindent-mode
						color-identifiers-mode
						company
						company-ghc
						company-ghci
						dtrt-indent
						elpy
						epl
						evil
						evil-commentary
						evil-search-highlight-persist
						find-file-in-project
						fill-column-indicator
						function-args
						ghc
						ghci-completion
						git-commit
						golden-ratio
						haskell-mode
						helm
						helm-c-yasnippet
						helm-ag
						helm-descbinds
						helm-ghc
						helm-gtags
						helm-projectile
						hi2
						highlight
						highlight-indentation
						ivy
						js2-mode
						json-mode
						json-reformat
						json-snatcher
						magit
						nlinum
						open-junk-file
						packed
						pkg-info
						powerline
						powerline-evil
						projectile
						pyvenv
						rainbow-delimiters
						restart-emacs
						smart-tabs-mode
						smooth-scrolling
						spacemacs-theme
						stickyfunc-enhance
						swiper
						tabbar
						undo-tree
						with-editor
						ws-butler
						yasnippet
;;=============== END OF REQUIRED PACKAGES ==============
						))
(mapc #'ge/require-package ge/package-list)

;; auto-compile
(setq load-prefer-newer t)
(require 'auto-compile)
(auto-compile-on-load-mode)
(auto-compile-on-save-mode)
(setq auto-compile-display-buffer nil)
(setq auto-compile-mode-line-counter t)

(provide 'init-lisp-loader)
