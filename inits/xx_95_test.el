(defun test-test-test ()
  (message "--->%s" window-system))

;;(test-test-test)

(add-hook 'after-init-hook 'test-test-test)
;;(add-hook 'change-major-mode-hook 'test-test-test)


