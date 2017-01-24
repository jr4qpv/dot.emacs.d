;; 
;; undo-treeの設定
;;
;; undo-tree を読み込む
(require 'undo-tree)

;; undo-tree を起動時に有効にする
(global-undo-tree-mode t)

;; M-/ をredo に設定する。
(global-set-key (kbd "M-/") 'undo-tree-redo)
