;; Initialize various REPL environments to have consistent key bindings

;; Haskell Interactive
(eval-after-load "haskell-mode"
  '(progn
	 (define-key haskell-mode-map (kbd "C-x C-d") nil)
	 (define-key haskell-mode-map (kbd "C-c C-z") nil)
	 (define-key haskell-mode-map (kbd "C-c c o") #'haskell-interactive-switch)
	 (define-key haskell-mode-map (kbd "C-c C-l") nil)
	 (define-key haskell-mode-map (kbd "C-c c l") #'haskell-process-load-file)
	 (define-key haskell-mode-map (kbd "C-c C-b") nil)
	 (define-key haskell-mode-map (kbd "C-c C-t") nil)
	 (define-key haskell-mode-map (kbd "C-c c t") #'haskell-process-do-type)
	 (define-key haskell-mode-map (kbd "C-c C-i") nil)
	 (define-key haskell-mode-map (kbd "C-c c i") #'haskell-process-do-info)
	 (define-key haskell-mode-map (kbd "C-c M-.") nil)
	 (define-key haskell-mode-map (kbd "C-c C-d") nil)
	 (define-key haskell-mode-map (kbd "C-c c k") #'haskell-session-kill)))

(eval-after-load "haskell-interactive-mode"
  #'(progn
	  (define-key haskell-interactive-mode-map (kbd "C-c c o") #'haskell-interactive-switch-back)))

(require 'elpy)
(when (executable-find "ipython3")
  (elpy-use-ipython "ipython3"))

(provide 'init-repls)
