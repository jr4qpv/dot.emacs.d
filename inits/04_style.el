;; 対応するカッコを強調表示
(show-paren-mode t)

;; 行番号を常に表示させる
(global-linum-mode)
(setq linum-format "%4d ")
;;(column-number-mode t)               ; 行番号と列番号を表示する

;; 時間も表示させる。
;;(display-time)
(setq display-time-24hr-format t)    ; 24時表示

;;(if window-system (progn     ; GUI時

;; タイトルバーにファイルのフルパス表示
;;(setq frame-title-format "Emacs -- %f")
(setq frame-title-format "%f")
;;(setq frame-title-format "%b  %f")
;;(setq frame-title-format (format (if (buffer-file-name) "%%f" "%%b")))

;;))
;;(setq frame-title-format
;;      (format "%%f - Emacs@%s" (system-name)))
