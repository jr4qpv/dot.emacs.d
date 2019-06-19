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

;; モニタ解像度に応じてフォントサイズを変える
;; See: http://qiita.com/syohex/items/7b8dccd8682d7db9cf5c
;; ※高さが1100以上の場合はフォントサイズを15,それ未満は13にする
(let ((size (cond
	     ((>= (x-display-pixel-height) 1100) 15)
	     ((>= (x-display-pixel-height) 900) 13)
	     (t 12) )
       ))
  (condition-case err
      (let ((myfont (format "Monaco-%d" size)))
    (set-frame-font myfont)
    (add-to-list 'initial-frame-alist `(font . ,myfont)))
    (error (message "%s" err))))

;; 新規フレームのデフォルト設定
(setq default-frame-alist initial-frame-alist)

