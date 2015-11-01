;;; evil-commentary-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "evil-commentary" "evil-commentary.el" (22063
;;;;;;  44143 693959 256000))
;;; Generated autoloads from evil-commentary.el

(defvar evil-commentary-mode nil "\
Non-nil if Evil-Commentary mode is enabled.
See the command `evil-commentary-mode' for a description of this minor mode.")

(custom-autoload 'evil-commentary-mode "evil-commentary" nil)

(autoload 'evil-commentary-mode "evil-commentary" "\
Commentary mode.

\(fn &optional ARG)" t nil)

(autoload 'evil-commentary-do-in-org-src-block "evil-commentary" "\
Do `org-babel-do-in-edit-buffer' and restore view.

\(fn BEG END &rest BODY)" nil t)

(put 'evil-commentary-do-in-org-src-block 'lisp-indent-function 'defun)

(autoload 'evil-commentary-comment-for-org "evil-commentary" "\
Comment function for `org-mode'.

\(fn BEG END)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; evil-commentary-autoloads.el ends here
