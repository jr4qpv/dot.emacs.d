;;
;; Windows IME設定
;;

;; (set-language-environment "UTF-8") ;; UTF-8 でも問題ないので適宜コメントアウトしてください
(setq default-input-method "W32-IME")
(setq-default w32-ime-mode-line-state-indicator "[--]")
(setq w32-ime-mode-line-state-indicator-list '("[--]" "[あ]" "[--]"))
(w32-ime-initialize)
;; 日本語入力時にカーソルの色を変える設定 (色は適宜変えてください)
(global-set-key [kanji] 'toggle-input-method)
(add-hook 'w32-ime-on-hook '(lambda () (set-cursor-color "coral3")))
(add-hook 'w32-ime-off-hook '(lambda () (set-cursor-color "orchid")))

;; 以下はお好みで設定してください
;; 全てバッファ内で日本語入力中に特定のコマンドを実行した際の日本語入力無効化処理です
;; もっと良い設定方法がありましたら issue などあげてもらえると助かります

;; ミニバッファに移動した際は最初に日本語入力が無効な状態にする
(add-hook 'minibuffer-setup-hook 'deactivate-input-method)

;; isearch に移行した際に日本語入力を無効にする
(add-hook 'isearch-mode-hook '(lambda ()
         (deactivate-input-method)
         (setq w32-ime-composition-window (minibuffer-window))))
(add-hook 'isearch-mode-end-hook '(lambda () (setq w32-ime-composition-window nil)))

;; helm 使用中に日本語入力を無効にする
(advice-add 'helm :around '(lambda (orig-fun &rest args)
           (let ((select-window-functions nil)
              (w32-ime-composition-window (minibuffer-window)))
           (deactivate-input-method)
           (apply orig-fun args))))
