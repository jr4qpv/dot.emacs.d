;; 初期フレームの設定
(setq initial-frame-alist
      (append (list
	       '(width . 86)
	       '(height . 45)
;;	       '(top . 0)
;;	       '(left . 0)
;;	       '(font . "VL Gothic-11")
	       )
	      initial-frame-alist))

;; 新規フレームのデフォルト設定
(setq default-frame-alist initial-frame-alist)

;; Windowsでは初期フレームサイズが変更されなかったので、一度作成し閉じて回避
;;(when window-system			; GUI時

;;  (make-frame-command)
;;  (delete-frame)
;;  (other-frame)
;;(delete-other-frame)

;;)

