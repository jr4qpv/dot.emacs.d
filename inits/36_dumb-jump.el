(require 'dumb-jump)
(setq dumb-jump-selector 'helm) ;; 候補選択をhelmに任せます
;; これをしないとホームディレクトリ以下が検索対象になる
(setq dumb-jump-default-project "")
;; 日本語を含むパスだとgit grepがちゃんと動かない…
;;(setq dumb-jump-force-searcher 'ag)
(setq dumb-jump-force-searcher 'rg)
;; 標準キーバインドを有効にする
(dumb-jump-mode)

(global-set-key (kbd "C-c g") 'dumb-jump-go)
(global-set-key (kbd "C-c b") 'dumb-jump-back)
(global-set-key (kbd "C-M-q") 'dumb-jump-quick-look)
