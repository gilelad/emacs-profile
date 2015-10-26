;;;;;;;;;;;;;;;;;;;;;;;;;;; COPY-FILE-PATH ;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun winpath (path)
  (cond ((and path
             (equal (substring path 1 2) ":"))
         (replace-regexp-in-string "/" "\\\\" path))
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

(provide 'utils)
