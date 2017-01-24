;;; キーバインド設定
;;; パッケージで導入した拡張機能に対してキー割り当てられる事もあるので、
;;; すべてのEmacs拡張機能が読み込まれた後に実行する

;; C-hをbackspaceにする
;;(keyboard-translate ?\C-h ?\C-?)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-c ?") 'help-command)

;; キーバインド定義
;;(define-key global-map (kbd "C-z") 'scroll-down-command)
(define-key global-map (kbd "C-c z") 'suspend-frame)
(define-key global-map (kbd "C-c C-SPC") 'kill-ring-save)

;;折り返しトグルコマンド
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)

;; "C-t" でウィンドウを切り替える。初期値はtranspose-chars
(define-key global-map (kbd "C-t") 'other-window)

;; 他のウィンドウを閉じる
(define-key global-map (kbd "<f12>") 'delete-other-windows)

;; 行頭でC-kを実行した時に1行削除にする
(setq kill-whole-line t)

;; macOS
(when (eq system-type 'darwin)
  (setq ns-command-modifier (quote meta)))

