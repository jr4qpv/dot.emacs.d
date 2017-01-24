;;;試行錯誤用ファイルを開くための設定
;; (M-x package-install open-junk-file)
(require 'open-junk-file)
;; C-x C-zで試行錯誤ファイルを開く
(global-set-key (kbd "C-x C-z") 'open-junk-file)

