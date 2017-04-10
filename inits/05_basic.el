;;
;; 基本設定
;;
(require 'cl)

;;; ido.el設定
;;(ido-mode 1) ; コマンドがidoのものに置き換わる
;;(ido-everywhere 1) ; バッファ名・ファイル名入力すべてがidoに置き換わる

;;;エコーエリアに関数・変数の説明を表示させる
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)
(setq eldoc-idle-delay 0.2) ;すぐに表示したい
(setq eldoc-minor-mode-string "") ;モードラインにElDocと表示しない

;; find-functionをキー割り当てする
(find-function-setup-keys)

;; カーソル移動を論理行にする
(setq line-move-visual nil)
