;;
;; tabbarの設定
;;
(require 'tabbar)
(tabbar-mode)

(tabbar-mwheel-mode nil)                  ;; マウスホイール無効
(setq tabbar-buffer-groups-function nil)  ;; グループ無効
(setq tabbar-use-images nil)              ;; 画像を使わない


;;----- キーに割り当てる
;;(global-set-key (kbd "<C-tab>") 'tabbar-forward-tab)
;;(global-set-key (kbd "<C-S-tab>") 'tabbar-backward-tab)
(global-set-key (kbd "<f8>") 'tabbar-forward-tab)
(global-set-key (kbd "<f7>") 'tabbar-backward-tab)
(global-set-key (kbd "C-.") 'tabbar-forward-tab)
(global-set-key (kbd "C-,") 'tabbar-backward-tab)
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z n") 'tabbar-forward-tab)
(global-set-key (kbd "C-z p") 'tabbar-backward-tab)
(global-set-key (kbd "C-z C-n") 'tabbar-forward-tab)
(global-set-key (kbd "C-z C-p") 'tabbar-backward-tab)
(global-set-key (kbd "C-z <down>") 'tabbar-forward-tab)
(global-set-key (kbd "C-z <up>") 'tabbar-backward-tab)


;;----- 左側のボタンを消す
(dolist (btn '(tabbar-buffer-home-button
               tabbar-scroll-left-button
               tabbar-scroll-right-button))
  (set btn (cons (cons "" nil)
                 (cons "" nil))))


;;----- タブのセパレーターの長さ
(setq tabbar-separator '(2.0))


;;----- タブの色（CUIの時。GUIの時は後でカラーテーマが適用）
(set-face-attribute
 'tabbar-default nil
 :background "blue"
 :foreground "white"
 )
(set-face-attribute
 'tabbar-selected nil
 :background "#ff5f00"
 :foreground "brightwhite"
 :box nil
 )
(set-face-attribute
 'tabbar-modified nil
 :background "brightred"
 :foreground "brightwhite"
 :box nil
 )

(when window-system                       ; GUI時
  ;; 外観変更
  (set-face-attribute
   'tabbar-default nil
   :family "MeiryoKe_Gothic"
   :background "#34495E"
   :foreground "#EEEEEE"
   :height 0.85
   )
  (set-face-attribute
   'tabbar-unselected nil
   :background "#34495E"
   :foreground "#EEEEEE"
   :box nil
  )
  (set-face-attribute
   'tabbar-modified nil
   :background "#E67E22"
   :foreground "#EEEEEE"
   :box nil
  )
  (set-face-attribute
   'tabbar-selected nil
   :background "#E74C3C"
   :foreground "#EEEEEE"
   :box nil)
  (set-face-attribute
   'tabbar-button nil
   :box nil)
  (set-face-attribute
   'tabbar-separator nil
   :height 2.0)
)

;;----- 表示するバッファ
(defun my-tabbar-buffer-list ()
  (delq nil
        (mapcar #'(lambda (b)
                    (cond
                     ;; Always include the current buffer.
                     ((eq (current-buffer) b) b)
                     ((buffer-file-name b) b)
                     ((char-equal ?\  (aref (buffer-name b) 0)) nil)
                     ((equal "*scratch*" (buffer-name b)) b) ; *scratch*バッファは表示する
                     ((char-equal ?* (aref (buffer-name b) 0)) nil) ; それ以外の * で始まるバッファは表示しない
                     ((buffer-live-p b) b)))
                (buffer-list))))
(setq tabbar-buffer-list-function 'my-tabbar-buffer-list)
