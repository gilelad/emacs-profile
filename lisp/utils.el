;;;;;;;;;;;;;;;;;;;;;;;;;;; COPY-FILE-PATH ;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun copy-file-path (part)
  "Copy a part of the file path to kill-ring."
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
      (kill-new str)
      nil)))

(global-set-key (kbd "C-c k d") (lambda () (interactive) (copy-file-path ?d)))
(global-set-key (kbd "C-c k p") (lambda () (interactive) (copy-file-path ?p)))
(global-set-key (kbd "C-c k n") (lambda () (interactive) (copy-file-path ?n)))


;;;;;;;;;;;;;;;;;;;;;;;;;;; CREATE-BUFFER-HOOK ;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-minor-mode create-buffer-mode
  "empty minor mode designed to provide a create-buffer hook")

(define-globalized-minor-mode global-create-buffer-mode
  create-buffer-mode
  (lambda ()
    (create-buffer-mode t)))
(global-create-buffer-mode t)

(provide 'utils)
