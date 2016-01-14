;;;;;;;;;;;;;;;;;;;;;;;;;;; COPY-FILE-PATH ;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun winpath (path)
  (setq path (replace-regexp-in-string "^/cygdrive/\\([^/]*\\)/"
									   "\\1:\\\\"
									   path))
  (cond ((and path
             (equal (substring path 1 2) ":"))
         (replace-regexp-in-string "/"
								   "\\\\"
								   path))
        (t path)))

(defun copy-file-path (part)
  (interactive "cpart (d=directory, p=full path, n=file name)?")
  (let ((file (buffer-file-name))
        (str))
    (when file
      (cond ((eq part ?d)
             (setq str (file-name-directory file)))
            ((eq part ?p)
             (setq str (expand-file-name file)))
            ((eq part ?n)
             (setq str (file-name-nondirectory file))))
      (kill-new (winpath str))
      nil)))

(global-set-key (kbd "C-c C-k C-d") (lambda () (interactive) (copy-file-path ?d)))
(global-set-key (kbd "C-c C-k C-p") (lambda () (interactive) (copy-file-path ?p)))
(global-set-key (kbd "C-c C-k C-n") (lambda () (interactive) (copy-file-path ?n)))

;;;;;;;;;;;;;;;;;;;;;;;;;;; COPY TABLE FIELD VALUE ;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-c v")
                (lambda ()
                  (interactive)
                  (kill-new (->> (org-table-get-field)
                                 (replace-regexp-in-string "\\`[ \t\n\r]+" "")
                                 (replace-regexp-in-string "[ \t\n\r]+\\'" "")))))

;;;;;;;;;;;;;;;;;;;;;;;;;;; CREATE-BUFFER-HOOK ;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-minor-mode create-buffer-mode
  "empty minor mode designed to provide a create-buffer hook")

(define-globalized-minor-mode global-create-buffer-mode
  create-buffer-mode
  (lambda ()
    (create-buffer-mode t)))
(global-create-buffer-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;; KILL-RING-SAVE-SYMBOL-AT-POINT ;;;;;;;;;;;;;;;;;;;;;
(defun kill-ring-save-symbol-at-point ()
  "Copy symbol at point to kill-ring"
  (interactive)
  (let ((sym (symbol-at-point)))
	(if sym (kill-new (symbol-name sym)))))

(global-set-key (kbd "C-c C-k C-.") 'kill-ring-save-symbol-at-point)

;;;;;;;;;;;;;;;;;;;;;;;;;;; MOVE/RENAME FILE AND BUFFER ;;;;;;;;;;;;;;;;;;;;;;;;
;; From https://sites.google.com/site/steveyegge2/my-dot-emacs-file
;; Never understood why Emacs doesn't have this function.
;;
(defun rename-file-and-buffer (new-name)
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
(defun move-buffer-file (dir)
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
(defun kill-current-buffer-and-frame ()
  "Tries to kill the current buffer, and if succeeds, the frame as well"
  (interactive)
  (if (kill-buffer)
	  (delete-frame)))
(global-set-key (kbd "C-x 5 k") 'kill-current-buffer-and-frame)

(global-set-key (kbd "C-c C-k 0") (lambda ()
									"Kill buffer and window"
									(interactive) (quit-window t)))

;;;;;;;;;;;;;;;;;;;;;;;;;INSERT-STRING-REGION-EVERY;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun insert-string-region-every (&optional arg)
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

(provide 'utils)
