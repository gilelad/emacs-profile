;;;;;;;;;;;;;;;;;;;;;;;;;;; COPY-FILE-PATH ;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun ge/winpath (path)
  (setq path (replace-regexp-in-string "^/cygdrive/\\([^/]*\\)/"
									   "\\1:\\\\"
									   path))
  (cond ((and path (equal (substring path 1 2) ":"))
         (replace-regexp-in-string "/" "\\\\" path))
        (t path)))

(defun ge/copy-file-path (part)
  (interactive "cpart (d=directory, p=full path, n=file name)?")
  (let ((file (buffer-file-name)))
    (when file
	  (let ((str (cond ((eq part ?d)
						(setq str (file-name-directory file)))
					   ((eq part ?p)
						(setq str (expand-file-name file)))
					   ((eq part ?n)
						(setq str (file-name-nondirectory file))))))
		(when (str)
		  (kill-new (ge/winpath str)))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;; COPY TABLE FIELD VALUE ;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun ge/org-copy-table-field-as-kill ()
  "add current table field value into kill-ring"
  (interactive)
  (kill-new (->> (org-table-get-field)
                                 (replace-regexp-in-string "\\`[ \t\n\r]+" "")
                                 (replace-regexp-in-string "[ \t\n\r]+\\'" ""))))

;;;;;;;;;;;;;;;;;;;;;;;;;;; CREATE-BUFFER-HOOK ;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-minor-mode ge/create-buffer-mode
  "empty minor mode designed to provide a create-buffer hook")

(define-globalized-minor-mode ge/global-create-buffer-mode
  ge/create-buffer-mode
  (lambda ()
    (ge/create-buffer-mode t)))
(ge/global-create-buffer-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;; KILL-RING-SAVE-SYMBOL-AT-POINT ;;;;;;;;;;;;;;;;;;;;;
(defun ge/kill-ring-save-symbol-at-point ()
  "Copy symbol at point to kill-ring"
  (interactive)
  (let ((sym (symbol-at-point)))
	(if sym (kill-new (symbol-name sym)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;; MOVE/RENAME FILE AND BUFFER ;;;;;;;;;;;;;;;;;;;;;;;;
;; From https://sites.google.com/site/steveyegge2/my-dot-emacs-file
;; Never understood why Emacs doesn't have this function.
;;
(defun ge/rename-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive "sNew name: ")
  (let ((name (buffer-name))
		(filename (buffer-file-name)))
	(if (not filename)
		(message "Buffer '%s' is not visiting a file!" name)
	  (if (get-buffer new-name)
		  (message "A buffer named '%s' already exists!" new-name)
		(progn 	 (rename-file name new-name 1)
				 (rename-buffer new-name)
				 (set-visited-file-name new-name)
				 (set-buffer-modified-p nil))))))
;;
;; Never understood why Emacs doesn't have this function, either.
;;
(defun ge/move-buffer-file (dir)
  "Moves both current buffer and file it's visiting to DIR."
  (interactive "DNew directory: ")
  (let* ((name (buffer-name))
		 (filename (buffer-file-name))
		 (dir (if (string-match dir "\\(?:/\\|\\\\)$")
				  (substring dir 0 -1) dir))
		 (newname (concat dir "/" name)))

	(if (not filename)
		(message "Buffer '%s' is not visiting a file!" name)
	  (progn  (copy-file filename newname 1)
			  (delete-file filename)
			  (set-visited-file-name newname)
			  (set-buffer-modified-p nil)
			  t))))

;;;;;;;;;;;;;;;;;;;;;;;;;KILL-CURRENT-BUFFER-AND-WHATEVER;;;;;;;;;;;;;;;;;;;;;;;;
(defun ge/kill-this-buffer-and-frame ()
  "Tries to kill the current buffer, and if succeeds, the frame as well"
  (interactive)
  (if (kill-buffer)
	  (delete-frame)))

(defun ge/kill-this-buffer-and-window ()
  "Tries to kill the current buffer, and if succeeds, the window as well"
  (interactive)
  (if (kill-buffer)
	  (delete-window)))

;;;;;;;;;;;;;;;;;;;;;;;;;INSERT-STRING-REGION-EVERY;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun ge/insert-string-region-every (&optional arg)
  "Insert string 's' every at 'i' intervals in region.
default for 's' is '\n'.
default for 'i' is fill-column"
  (interactive "P")
  (save-excursion
	(let ((filler "\n")
		  (every fill-column))
	  (when arg
		(message "unimplemented"))
	  (goto-char (+ every (region-beginning)))
	  (while (< (point) (region-end))
		(insert filler)
		(goto-char (+ every (point)))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;ALIGN-REGION-USING-SPACES;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun ge/start-of-line (n)
  (save-excursion
	(goto-char (point-min))
	(forward-line (1- n))
	(line-beginning-position)))

(defun ge/end-of-line (n)
  (save-excursion
	(goto-char (point-min))
	(forward-line (1- n))
	(line-end-position)))

(defun ge/align-region-spaces ()
  ""
  (interactive)
  (if (region-active-p)
	  (save-excursion
		(let ((lstart (line-number-at-pos (region-beginning)))
			  (lend (line-number-at-pos (region-end))))

		  (progn
			(let ((indent-tabs-mode nil))
			  (replace-string "\t" " " nil (region-beginning) (region-end))
			  (replace-regexp " +" " " nil (region-beginning) (region-end))
			  (align-entire (region-beginning) (region-end)))
			(indent-region (ge/start-of-line lstart) (ge/end-of-line lend)))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;; IGNORE-ERRORS-WRAPPER ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun ge/ignore-error-wrapper (fn) ; from http://www.emacswiki.org/emacs/WindMove
  "Funtion return new function that ignore errors.
   The function wraps a function with `ignore-errors' macro."
  (let ((fn fn))
    (lambda ()
      (interactive)
      (ignore-errors
        (funcall fn)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;; SUBMODULES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun ge/add-submodule-to-loadpath (sub)
  "Add the submodule subdirectory \"sub\", assumed to be located under
  \"~/.emacs.d/modules\" to loadpath"
  (interactive)
  (let ((dir (ge/winpath (concat user-emacs-directory "modules/" sub))))
	(when (file-directory-p dir)
		(add-to-list 'load-path dir))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;; ADAPTIVE NARROWING ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun ge/narrow-or-widen-dwim (p)
  "Widen if buffer is narrowed, narrow-dwim otherwise.
Dwim means: region, org-src-block, org-subtree, or
defun, whichever applies first. Narrowing to
org-src-block actually calls `org-edit-src-code'.

With prefix P, don't widen, just narrow even if buffer
is already narrowed.
Adapted from http://endlessparentheses.com/emacs-narrow-or-widen-dwim.html"
  (interactive "P")
  (declare (interactive-only))
  (cond ((and (buffer-narrowed-p) (not p)) (widen))
		((region-active-p)
		 (narrow-to-region (region-beginning)
						   (region-end)))
		((derived-mode-p 'org-mode)
		 ;; `org-edit-src-code' is not a real narrowing
		 ;; command. Remove this first conditional if
		 ;; you don't want it.
		 (cond ((ignore-errors (org-edit-src-code) t)
				(delete-other-windows))
			   ((ignore-errors (org-narrow-to-block) t))
			   (t (org-narrow-to-subtree))))
		((derived-mode-p 'latex-mode)
		 (LaTeX-narrow-to-environment))
		(t (narrow-to-defun))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;; AUTOHIDE TABBAR ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'tabbar)
(funcall (lambda ()
		   "Make tabbar briefly show itself while you are switching buffers with
            shortcuts.
            Borrowed from https://www.emacswiki.org/emacs/TabBarMode#toc15.
            Adapted to using `advice' for the wrapper, and `tabbar-local-mode'
            to force tabbar visibility above other header lines."

		   (interactive)
		   (tabbar-mode 0)
		   (defvar ge/tabbar-autohide-timer nil)
		   (defun ge/renew-tabbar-autohide-timer ()
			 (if (timerp ge/tabbar-autohide-timer)
				 (cancel-timer ge/tabbar-autohide-timer))
			 (setf ge/tabbar-autohide-timer
				   (run-with-timer
					2 nil (lambda ()
							(tabbar-mode 0)
							(setf ge/tabbar-autohide-timer nil)))))

		   (defun ge/tabbar-local-if-invisible ()
			 (interactive)
			 (when (and (tabbar-mode-on-p)
						(boundp 'tabbar-header-line-format)
						(not (eq header-line-format tabbar-header-line-format)))
			   (tabbar-local-mode 1)))

		   (defun ge/tabbar-autohide-wrapper (f &rest args)
			 (if tabbar-mode
				 (apply f args)
			   (tabbar-mode t))
			 (ge/tabbar-local-if-invisible)
			 (ge/renew-tabbar-autohide-timer))

		   (advice-add #'tabbar-forward :around #'ge/tabbar-autohide-wrapper)
		   (advice-add #'tabbar-backward :around #'ge/tabbar-autohide-wrapper)
		   (advice-add #'tabbar-forward-group :around #'ge/tabbar-autohide-wrapper)
		   (advice-add #'tabbar-backward-group :around #'ge/tabbar-autohide-wrapper)))


(provide 'ge-utils)
