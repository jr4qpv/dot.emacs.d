;;
;; テーマを設定する
;;
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(setq custom-theme-directory "~/.emacs.d/themes")

(when window-system                       ; GUI時
;;  (load-theme 'deeper-blue t)
;;  (load-theme 'my-deeper-blue t)
  (load-theme 'my-manoj-dark t)
  
  ;; 現在行に色をつける
  (global-hl-line-mode t)		  ; 現在行に色をつける
  )

(unless window-system                     ; CUI時
  (load-theme 'manoj-dark t)

  ;; 現在行を下線
  (setq hl-line-face 'underline)	  ; 現在行をアンダーライン
  (global-hl-line-mode)
  )

