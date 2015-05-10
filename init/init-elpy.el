(provide 'init-elpy)

(elpy-enable)
(elpy-use-ipython)
(setq-default elpy-interactive-python-command "ipython3"
              elpy-rpc-python-command         "ipython3")
