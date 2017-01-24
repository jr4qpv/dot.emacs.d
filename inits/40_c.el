;;
;; C/C++言語の設定
;;
(defun my-c-mode-common-init ()
  "C, C++ mode set up function"
  (setq tab-width 4)
  ;; <- 追加
  )

(add-hook 'c-mode-hook 'my-c-mode-common-init)
(add-hook 'c++-mode-hook 'my-c-mode-common-init)
