;;;;;;;;;;;;;;;;;;;;;;;;;;; GOLDEN-RATIO ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (require 'golden-ratio)

;; ;;Take care of windmove as well
;; (defun ge/after-windmove-golden (orig &rest args)
;;   (golden-ratio))

;; (add-hook 'golden-ratio-mode-hook
;;           (lambda ()
;; 			(if golden-ratio-mode
;; 				(advice-add 'windmove-do-window-select :after #'ge/after-windmove-golden)
;; 			  (advice-remove 'windmove-do-window-select #'ge/after-windmove-golden))))

;; (golden-ratio-mode 1)

(provide 'init-nav)
