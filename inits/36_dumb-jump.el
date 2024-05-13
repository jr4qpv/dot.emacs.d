(require 'dumb-jump)
;; これをしないとホームディレクトリ以下が検索対象になる
(setq dumb-jump-default-project "")
;; 日本語を含むパスだとgit grepがちゃんと動かない…
;;(setq dumb-jump-force-searcher 'rg)
(setq dumb-jump-force-searcher 'ag)
;; 標準キーバインドを有効にする
(dumb-jump-mode)
