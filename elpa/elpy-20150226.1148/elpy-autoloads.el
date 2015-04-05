;;; elpy-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (elpy-version elpy-config elpy-mode elpy-enable)
;;;;;;  "elpy" "elpy.el" (21792 2870 412530 383000))
;;; Generated autoloads from elpy.el

(autoload 'elpy-enable "elpy" "\
Enable Elpy in all future Python buffers.

\(fn &optional IGNORED)" t nil)

(autoload 'elpy-mode "elpy" "\
Minor mode in Python buffers for the Emacs Lisp Python Environment.

This mode fully supports virtualenvs. Once you switch a
virtualenv using \\[pyvenv-workon], you can use
\\[elpy-rpc-restart] to make the elpy Python process use your
virtualenv.

See https://github.com/jorgenschaefer/elpy/wiki/Keybindings for a
more structured list.

\\{elpy-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'elpy-config "elpy" "\
Configure Elpy.

This function will pop up a configuration buffer, which is mostly
a customize buffer, but has some more options.

\(fn)" t nil)

(autoload 'elpy-version "elpy" "\
Display the version of Elpy.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("elpy-pkg.el" "elpy-refactor.el") (21792
;;;;;;  2876 242811 723000))

;;;***

(provide 'elpy-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; elpy-autoloads.el ends here
