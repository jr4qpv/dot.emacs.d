;; コンパイル時に画面スクロールする
(setq compilation-scroll-output t)

;; yesと入力するのは面倒なのでyで十分
(defalias 'yes-or-no-p 'y-or-n-p)

;; splash screenを無効にする
(setq inhibit-splash-screen t)

;; 警告音もフラッシュも全て無効(警告音が完全に鳴らなくなるので注意)
(setq ring-bell-function 'ignore)

