(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ad-redefinition-action (quote accept))
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
 '(cscope-display-times nil)
 '(cscope-indexer-ignored-directories
   (quote
	("CVS" "RCS" "SCCS" ".git" ".hg" ".bzr" ".cdv" ".pc" ".svn" "_MTN" "_darcs" "_sgbak" "debian" "CMpub" "linux30" "linux50")))
 '(cscope-option-use-inverted-index t)
 '(custom-safe-themes
   (quote
	("878e22a7fe00ca4faba87b4f16bc269b8d2be5409d1c513bb7eda025da7c1cf4" "cadc97db0173a0d0bfc40473cab4da462af0ba8d60befd0a4879b582bcbc092d" "6998bd3671091820a6930b52aab30b776faea41449b4246fdce14079b3e7d125" "51277c9add74612c7624a276e1ee3c7d89b2f38b1609eed6759965f9d4254369" "b5fe3893c8808466711c1b55bb7e66b9c6aa2a86811783375a43e1beabb1af33" "532769a638787d1196bc22c885e9b85269c3fc650fdecfc45135bb618127034c" "0788bfa0a0d0471984de6d367bb2358c49b25e393344d2a531e779b6cec260c5" "8c75217782ccea7e9f3ad2dae831487a5fb636d042263d0a0e0438d551da3224" "b869a1353d39ab81b19eb79de40ff3e7bb6eaad705e61f7e4dbdcb183f08c5a6" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "70340909b0f7e75b91e66a02aa3ad61f3106071a1a4e717d5cdabd8087b47ec4" "977513781c8dd86f4f0a04dbf518df5ba496da42b71173368b305478703eea42" "a0bbe4dc3513cbd049eb95f79c467b6f19dc42979fec27a0481bb6980bd8d405" "86a731bda96ed5ed69980b4cbafe45614ec3c288da3b773e4585101e7ece40d2" "133222702a3c75d16ea9c50743f66b987a7209fb8b964f2c0938a816a83379a0" "e8586a76a96fd322ccb644ca0c3a1e4f4ca071ccfdb0f19bef90c4040d5d3841" "beeb5ac6b65fcccfe434071d4624ff0308b5968bf2f0c01b567d212bcaf66054" "aab598c4d024d544b4e8b356a95ca693afa9de000b154bd2f86eed68c9e75557" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "d9a0d14596e3d0bdb81f052fa9b99741dcd239af402d42e35f80822e05557cb2" "fbcdb6b7890d0ec1708fa21ab08eb0cc16a8b7611bb6517b722eba3891dfc9dd" "d8cec8251169ccfe192aa87d69b9378bc81599330f31498f85deaef633721302" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(default-frame-alist (quote ((fullscreen . maximized))))
 '(desktop-save-mode t)
 '(ecb-options-version "2.40")
 '(echo-keystrokes 0.1)
 '(fci-rule-color "#27408b")
 '(fill-column 80)
 '(global-company-mode t)
 '(inhibit-startup-screen t)
 '(line-number-mode t)
 '(linum-delay t)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(python-shell-interpreter-args "-i --colors=NoColor")
 '(safe-local-variable-values
   (quote
	((eval when
		   (stringp
			(buffer-file-name))
		   (let
			   ((root
				 (replace-regexp-in-string "^\\(/disk/[^/]*/[^/]*/[^/]*\\)/.*$" "\\1"
										   (file-name-directory
											(buffer-file-name)))))
			 (mapc
			  (function semantic-add-system-include)
			  (list
			   (concat root "/include")
			   (concat root "/fwlib")
			   (concat root "/modules/bfm")
			   (concat root "/modules/chassis_control")
			   (concat root "/modules/cpshared")
			   (concat root "/modules/fwis")
			   (concat root "/modules/vsxagent")))))
	 (eval let
		   ((root
			 (replace-regexp-in-string "^\\(/disk/[^/]*/[^/]*/[^/]*\\)/.*$" "\\1"
									   (file-name-directory
										(buffer-file-name)))))
		   (mapc
			(function semantic-add-system-include)
			(list
			 (concat root "/include")
			 (concat root "/fwlib")
			 (concat root "/modules/bfm")
			 (concat root "/modules/chassis_control")
			 (concat root "/modules/cpshared")
			 (concat root "/modules/fwis")
			 (concat root "/modules/vsxagent"))))
	 (eval let
		   ((root
			 (replace-regexp-in-string "^\\(/disk/[^/]*/[^/]*/[^/]*\\)/.*$" "\\1"
									   (file-name-directory
										(buffer-file-name)))))
		   (ede-cpp-root-project
			(replace-regexp-in-string "^/disk/[^/]*/\\([^/]*\\)/.*$" "\\1"
									  (file-name-directory
									   (buffer-file-name)))
			:file
			(replace-regexp-in-string "^\\(/disk/[^/]*/[^/]*/[^/]*\\)/.*$" "\\1/module.conf"
									  (file-name-directory
									   (buffer-file-name)))
			:system-include-path
			(list
			 (concat root "/include")
			 (concat root "/fwlib")
			 (concat root "/modules/bfm")
			 (concat root "/modules/chassis_control")
			 (concat root "/modules/cpshared")
			 (concat root "/modules/fwis")
			 (concat root "/modules/vsxagent"))))
	 (eval let
		   ((root
			 (replace-regexp-in-string "^\\(/disk/[^/]*/[^/]*/[^/]*\\)/.*$" "\\1"
									   (file-name-directory
										(buffer-file-name)))))
		   (ede-cpp-root-project
			(replace-regexp-in-string "^/disk/[^/]*/\\([^/]*\\)/.*$" "\\1"
									  (file-name-directory
									   (buffer-file-name)))
			:file
			(replace-regexp-in-string "^\\(/disk/[^/]*/[^/]*/[^/]*\\)/.*$" "\\1/module.conf"
									  (file-name-directory
									   (buffer-file-name)))
			:system-include-path
			(list
			 (concat root "/include")
			 (concat root "/fwlib")
			 (concat root "/modules/bfm/bfm")
			 (concat root "/modules/chassis_control")
			 (concat root "/modules/cpshared")
			 (concat root "/modules/fwis")
			 (concat root "/modules/vsxagent"))))
	 (eval progn
		   (setq-local semantic-dependency-include-path
					   (-concat semantic-dependency-include-path
								(quote
								 ("/include" "/fwlib" "/modules/bfm/bfm" "/modules/chassis_control" "/modules/cpshared" "/modules/fwis" "/modules/vsxagent"))))
		   (ede-cpp-root-project
			(replace-regexp-in-string "^/disk/[^/]*/\\([^/]*\\)/.*$" "\\1"
									  (file-name-directory
									   (buffer-file-name)))
			:file
			(replace-regexp-in-string "^\\(/disk/[^/]*/[^/]*/[^/]*\\)/.*$" "\\1/module.conf"
									  (file-name-directory
									   (buffer-file-name)))
			:include-path
			(quote
			 ("/include" "/fwlib" "/modules/bfm/bfm" "/modules/chassis_control" "/modules/cpshared" "/modules/fwis" "/modules/vsxagent"))))
	 (eval progn
		   (setq-local semantic-dependency-include-path
					   (-concat semantic-dependency-include-path
								(quote
								 ("/include" "/fwlib" "/modules/bfm/bfm" "/modules/chassis_control" "/modules/cpshared" "/modules/fwis" "/modules/vsxagent"))
								(ede-cpp-root-project
								 (replace-regexp-in-string "^/disk/[^/]*/\\([^/]*\\)/.*$" "\\1"
														   (file-name-directory
															(buffer-file-name)))
								 :file
								 (replace-regexp-in-string "^\\(/disk/[^/]*/[^/]*/[^/]*\\)/.*$" "\\1/module.conf"
														   (file-name-directory
															(buffer-file-name)))
								 :include-path
								 (quote
								  ("/include" "/fwlib" "/modules/bfm/bfm" "/modules/chassis_control" "/modules/cpshared" "/modules/fwis" "/modules/vsxagent"))))))
	 (eval progn
		   (setq-local semantic-dependency-include-path
					   (-concat semantic-dependency-include-path
								(list
								 (concat root "/include")
								 (concat root "/fwlib")
								 (concat root "/modules/bfm/bfm")
								 (concat root "/modules/chassis_control")
								 (concat root "/modules/cpshared")
								 (concat root "/modules/fwis")
								 (concat root "/modules/vsxagent"))))
		   (ede-cpp-root-project
			(replace-regexp-in-string "^/disk/[^/]*/\\([^/]*\\)/.*$" "\\1"
									  (file-name-directory
									   (buffer-file-name)))
			:file
			(replace-regexp-in-string "^\\(/disk/[^/]*/[^/]*/[^/]*\\)/.*$" "\\1/module.conf"
									  (file-name-directory
									   (buffer-file-name)))
			:include-path
			(quote
			 ("/include" "/fwlib" "/modules/bfm/bfm" "/modules/chassis_control" "/modules/cpshared" "/modules/fwis" "/modules/vsxagent"))))
	 (eval let
		   ((root
			 (replace-regexp-in-string "^\\(/disk/[^/]*/[^/]*/[^/]*\\)/.*$" "\\1"
									   (file-name-directory
										(buffer-file-name)))))
		   (setq-local semantic-dependency-include-path
					   (-concat semantic-dependency-include-path
								(list
								 (concat root "/include")
								 (concat root "/fwlib")
								 (concat root "/modules/bfm/bfm")
								 (concat root "/modules/chassis_control")
								 (concat root "/modules/cpshared")
								 (concat root "/modules/fwis")
								 (concat root "/modules/vsxagent"))))
		   (ede-cpp-root-project
			(replace-regexp-in-string "^/disk/[^/]*/\\([^/]*\\)/.*$" "\\1"
									  (file-name-directory
									   (buffer-file-name)))
			:file
			(replace-regexp-in-string "^\\(/disk/[^/]*/[^/]*/[^/]*\\)/.*$" "\\1/module.conf"
									  (file-name-directory
									   (buffer-file-name)))
			:include-path
			(quote
			 ("/include" "/fwlib" "/modules/bfm/bfm" "/modules/chassis_control" "/modules/cpshared" "/modules/fwis" "/modules/vsxagent"))))
	 (eval let
		   ((root
			 (replace-regexp-in-string "^\\(/disk/[^/]*/[^/]*/[^/]*\\)/.*$" "\\1"
									   (file-name-directory
										(buffer-file-name)))))
		   (setq-local semantic-dependency-include-path
					   (-concat semantic-dependency-include-path
								(list
								 (concat root "/include")
								 (concat root "/fwlib")
								 (concat root "/modules/bfm/bfm")
								 (concat root "/modules/chassis_control")
								 (concat root "/modules/cpshared")
								 (concat root "/modules/fwis")
								 (concat root "/modules/vsxagent")))))
	 (eval let
		   ((root
			 (replace-regexp-in-string "^\\(/disk/[^/]*/[^/]*/[^/]*\\)/.*$" "\\1"
									   (file-name-directory
										(buffer-file-name)))))
		   (setq-local semantic-dependency-include-path
					   (-concat semantic-dependency-include-path
								(list
								 (concat root "/include")
								 (concat root "/fwlib")
								 (concat root "/modules/bfm/bfm")
								 (concat root "/modules/chassis_control")
								 (concat root "/modules/cpshared")
								 (concat root "/fwis")
								 (concat root "/vsxagent")))))
	 (eval let
		   ((root
			 (replace-regexp-in-string "^\\(/disk/[^/]*/[^/]*/[^/]*\\)/.*$" "\\1"
									   (file-name-directory
										(buffer-file-name)))))
		   (setq-local
			(quote semantic-dependency-include-path)
			($-concat
			 (quote semantic-dependency-include-path)
			 (concat root "/include")
			 (concat root "/fwlib")
			 (concat root "/modules/bfm/bfm")
			 (concat root "/modules/chassis_control")
			 (concat root "/modules/cpshared")
			 (concat root "/fwis")
			 (concat root "/vsxagent"))))
	 (eval let
		   ((root
			 (replace-regexp-in-string "^\\(/disk/[^/]*/[^/]*/[^/]*\\)/.*$" "\\1"
									   (file-name-directory
										(buffer-file-name)))))
		   (add-to-list
			(quote semantic-dependency-include-path)
			(list
			 (concat root "/include")
			 (concat root "/fwlib")
			 (concat root "/modules/bfm/bfm")
			 (concat root "/modules/chassis_control")
			 (concat root "/modules/cpshared")
			 (concat root "/fwis")
			 (concat root "/vsxagent"))))
	 (eval ede-cpp-root-project
		   (replace-regexp-in-string "^/disk/[^/]*/\\([^/]*\\)/.*$" "\\1"
									 (file-name-directory
									  (buffer-file-name)))
		   :file
		   (replace-regexp-in-string "^\\(/disk/[^/]*/[^/]*/[^/]*\\)/.*$" "\\1/module.conf"
									 (file-name-directory
									  (buffer-file-name)))
		   :include-path
		   (quote
			("/include" "/fwlib" "/modules/bfm/bfm" "/modules/chassis_control" "/modules/cpshared" "/modules/fwis" "/modules/vsxagent")))
	 (eval setq ede-cpp-root-project
		   (list
			(replace-regexp-in-string "^/disk/[^/]*/\\([^/]*\\)/.*$" "\\1"
									  (file-name-directory
									   (buffer-file-name)))
			:file
			(replace-regexp-in-string "^\\(/disk/[^/]*/[^/]*/[^/]*\\)/.*$" "\\1/module.conf"
									  (file-name-directory
									   (buffer-file-name)))
			:include-path
			(quote
			 ("/include" "/fwlib" "/modules/bfm/bfm" "/modules/chassis_control" "/modules/cpshared" "/modules/fwis" "/modules/vsxagent"))))
	 (eval setq ede-cpp-root-project
		   (list
			(replace-regexp-in-string "^/disk/[^/]*/\\([^/]*\\)/.*$" "\\1"
									  (file-name-directory
									   (buffer-file-name)))
			:file
			(replace-regexp-in-string "^\\(/disk/[^/]*/[^/]*\\)/.*$" "\\1/module.conf"
									  (file-name-directory
									   (buffer-file-name)))
			:include-path
			(quote
			 ("/include" "/fwlib" "/modules/bfm/bfm" "/modules/chassis_control" "/modules/cpshared" "/modules/fwis" "/modules/vsxagent"))))
	 (cscope-option-kernel-mode . t)
	 (eval setq ede-cpp-root-project
		   (list
			(replace-regexp-in-string "^/disk/[^/]*/\\([^/]*\\)/.*$" "\\1"
									  (file-name-directory
									   (buffer-file-name)))
			:file
			(concat
			 (file-name-directory
			  (buffer-file-name))
			 "module.conf")
			:include-path
			(quote
			 ("/include" "/fwlib" "/modules/bfm/bfm" "/modules/chassis_control" "/modules/cpshared" "/modules/fwis" "/modules/vsxagent"))))
	 (eval let
		   ((name
			 (replace-regexp-in-string "^/disk/[^/]*/\\([^/]*\\)/.*$" "\\1"
									   (file-name-directory
										(buffer-file-name))))
			(file
			 (concat
			  (file-name-directory
			   (buffer-file-name))
			  "module.conf")))
		   (setq ede-cpp-root-project
				 (list name :file file :include-path
					   (quote
						("/include" "/fwlib" "/modules/bfm/bfm" "/modules/chassis_control" "/modules/cpshared" "/modules/fwis" "/modules/vsxagent")))))
	 (eval let
		   ((name
			 (replace-regexp-in-string "^/disk/[^/]*/\\([^/]*\\)/.*$" "\\1"
									   (file-name-directory
										(buffer-file-name))))
			(file
			 (concat
			  (file-name-directory
			   (buffer-file-name))
			  "module.conf")))
		   (setq ede-cpp-root-project
				 (quote
				  (name :file file :include-path
						(quote
						 ("/include" "/fwlib" "/modules/bfm/bfm" "/modules/chassis_control" "/modules/cpshared" "/modules/fwis" "/modules/vsxagent"))))))
	 (eval
	  (let
		  ((name
			(replace-regexp-in-string "^/disk/[^/]*/\\([^/]*\\)/.*$" "\\1"
									  (file-name-directory
									   (buffer-file-name))))
		   (file
			(concat
			 (file-name-directory
			  (buffer-file-name))
			 "module.conf")))
		(setq ede-cpp-root-project
			  (quote
			   (name :file file :include-path
					 (quote
					  ("/include" "/fwlib" "/modules/bfm/bfm" "/modules/chassis_control" "/modules/cpshared" "/modules/fwis" "/modules/vsxagent")))))))
	 (eval setq ede-cpp-root-project
		   (quote
			((replace-regexp-in-string "^/disk/[^/]*/\\([^/]*\\)/.*$" "\\1"
									   (file-name-directory
										(buffer-file-name)))
			 :file
			 (concat
			  (file-name-directory
			   (buffer-file-name))
			  "module.conf")
			 :include-path
			 (quote
			  ("/include" "/fwlib" "/modules/bfm/bfm" "/modules/chassis_control" "/modules/cpshared" "/modules/fwis" "/modules/vsxagent")))))
	 (eval setq ede-cpp-root-project
		   (quote
			(replace-regexp-in-string "^/disk/[^/]*/\\([^/]*\\)/.*$" "\\1"
									  (file-name-directory
									   (buffer-file-name)))
			:file
			(concat
			 (file-name-directory
			  (buffer-file-name))
			 "module.conf")
			:include-path
			(quote
			 ("/include" "/fwlib" "/modules/bfm/bfm" "/modules/chassis_control" "/modules/cpshared" "/modules/fwis" "/modules/vsxagent"))))
	 (eval setq ede-cpp-root-project
		   ((replace-regexp-in-string "^/disk/[^/]*/\\([^/]*\\)/.*$" "\\1"
									  (file-name-directory
									   (buffer-file-name))))
		   :file
		   (concat
			(file-name-directory
			 (buffer-file-name))
			"module.conf")
		   :include-path
		   (quote
			("/include" "/fwlib" "/modules/bfm/bfm" "/modules/chassis_control" "/modules/cpshared" "/modules/fwis" "/modules/vsxagent")))
	 (eval setq ede-cpp-root-project
		   (replace-regexp-in-string "^/disk/[^/]*/\\([^/]*\\)/.*$" "\\1"
									 (file-name-directory
									  (buffer-file-name)))
		   :file
		   (concat
			(file-name-directory
			 (buffer-file-name))
			"module.conf")
		   :include-path
		   (quote
			("/include" "/fwlib" "/modules/bfm/bfm" "/modules/chassis_control" "/modules/cpshared" "/modules/fwis" "/modules/vsxagent")))
	 (ede-cpp-root-project
	  (replace-regexp-in-string "^/disk/[^/]*/\\([^/]*\\)/.*$" "\\1"
								(file-name-directory
								 (buffer-file-name)))
	  :file
	  (concat
	   (file-name-directory
		(buffer-file-name))
	   "module.conf")
	  :include-path
	  (quote
	   ("/include" "/fwlib" "/modules/bfm/bfm" "/modules/chassis_control" "/modules/cpshared" "/modules/fwis" "/modules/vsxagent")))
	 (ede-cpp-root-project
	  (replace-regexp-in-string "^/disk/[^/]*/\\([^/]*\\)/.*$" "\\1"
								(file-name-directory
								 (buffer-file-name)))
	  :file
	  (concat
	   (file-name-directory
		(buffer-file-name))
	   "module.conf")
	  :include-path
	  (quote
	   ("/include")))
	 (eval setq cscope-option-kernel-mode t)
	 (company-backends quote
					   (company-gtags company-capf company-dabbrev-code company-etags company-keywords company-files company-dabbrev))
	 (ede-cpp-root-project
	  (replace-regexp-in-string "^m:/\\([^/]*\\).*$" "\\1"
								(file-name-directory
								 (buffer-file-name)))
	  :file
	  (concat
	   (file-name-directory
		(buffer-file-name))
	   "module.conf")
	  :include-path
	  (quote
	   ("/include")))
	 (c-font-lock-extra-types "FILE" "bool" "language" "linebuffer" "fdesc" "node" "regexp")
	 (eval setq byte-compile-not-obsolete-vars
		   (quote
			(display-buffer-function))))))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tab-width 4)
 '(tabbar-cycle-scope (quote tabs))
 '(tabbar-separator (quote ("|")))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#121212" :foreground "#b2b2b2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 125 :width normal :foundry "unknown" :family "VL Gothic"))))
 '(airline-emacs-outer ((t (:background "#7eaefc" :foreground "#242322"))))
 '(airline-insert-outer ((t (:background "#7eaefc" :foreground "#242322"))))
 '(airline-replace-outer ((t (:background "red" :foreground "#75d7d8"))))
 '(ecb-default-highlight-face ((t (:background "gray16"))))
 '(evil-search-highlight-persist-highlight-face ((t (:background "yellow1" :foreground "black"))))
 '(font-lock-comment-face ((t (:inherit nil :background "#121212" :foreground "#008787"))))
 '(font-lock-string-face ((t (:foreground "cyan"))))
 '(helm-selection ((t (:background "dim gray" :foreground "#242322" :weight bold))))
 '(linum ((t (:background "#121212" :foreground "#444444" :height 0.75 :width normal))))
 '(mode-line ((t (:background "#222226" :foreground "#b2b2b2" :box (:line-width 1 :color "#5d4d7a") :height 100 :family "FreeSans"))))
 '(mode-line-inactive ((t (:background "#292b2e" :foreground "#b2b2b2" :box (:line-width 1 :color "#5d4d7a") :height 100 :family "FreeSans"))))
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
 '(tabbar-default ((t (:inherit variable-pitch :foreground "#00af00" :height 0.8))))
 '(tabbar-modified ((t (:inherit tabbar-default :foreground "#5f0000" :box (:line-width 1 :color "white" :style released-button)))))
 '(tabbar-selected ((t (:inherit tabbar-default :foreground "#00ff87" :box (:line-width 1 :color "white" :style pressed-button) :weight bold))))
 '(tabbar-selected-modified ((t (:inherit tabbar-default :foreground "red" :box (:line-width 1 :color "white" :style released-button) :weight bold))))
 '(tabbar-separator ((t (:inherit tabbar-default :foreground "white"))))
 '(whitespace-tab ((t (:foreground "#839496")))))
;; -----------End of Customize settings--------------

(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
