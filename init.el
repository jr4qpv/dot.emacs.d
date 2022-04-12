;;Package cl is deprecatedが出されないための対策
(setq byte-compile-warnings '(cl-functions))
;;Emacs @28用void: browse-url-mosaic-program対策
(setq browse-url-mosaic-program nil)

;;
;; hostごとの設定があれば読み込む
;;
(setq init_host (concat "~/.emacs.d/local/init_" (system-name) ".el"))
(if (file-exists-p init_host)
    (load-file init_host))

;;
;; パッケージ管理(package.el)の設定
;;
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;;
;; init-loader
;;
(require 'init-loader)
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/inits")

