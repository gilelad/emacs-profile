(require 'helm-config)
(require 'helm-misc)

(setq helm-quick-update t
      helm-bookmark-show-location t
      helm-buffers-fuzzy-matching t)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))
(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-M-x-reverse-history              t ; The history source of `helm-M-x' appear in second position
      helm-ff-file-name-history-use-recentf t)
(helm-mode 1)
(helm-autoresize-mode t)
(setq helm-M-x-fuzzy-match t) ;; optional fuzzy matching for helm-M-x

;;;;;;;; HELM-GTAGS ;;;;;;;;
(require 'helm-gtags)
(require 'cc-mode)

(add-hook 'dired-mode-hook 'helm-gtags-mode)
(add-hook 'eshell-mode-hook 'helm-gtags-mode)
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(add-hook 'asm-mode-hook 'helm-gtags-mode)

(setq       helm-gtags-ignore-case t
            helm-gtags-auto-update t
            helm-gtags-use-input-at-cursor t
            helm-gtags-pulse-at-cursor t
            helm-gtags-fuzzy-match t
            helm-gtags-suggested-key-mapping t)

;;;;;;;; HELM-COMPANY ;;;;;;;;
(when (ge/add-submodule-to-loadpath "helm-company")
  (autoload 'helm-company "helm-company"))

(provide 'init-helm)
