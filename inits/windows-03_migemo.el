;;
;; migemo.elの設定 (for msys2)
;;
(when (and (executable-find "cmigemo")
           (require 'migemo nil t))
  (setq migemo-command "cmigemo")
  (setq migemo-options '("-q" "--emacs"))

  ;; Set your installed path (msys2では~からの相対で書かないとダメ)
  (setq migemo-dictionary
      (file-truename "~/../../usr/local/share/migemo/utf-8/migemo-dict"))

  (setq migemo-user-dictionary nil)
  (setq migemo-regex-dictionary nil)
  (setq migemo-coding-system 'utf-8-unix)
  (load-library "migemo")
  (migemo-init)
)
