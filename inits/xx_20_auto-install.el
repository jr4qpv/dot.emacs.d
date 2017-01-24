;;; auto-installの設定
;; (package-install 'auto-install)
(require 'auto-install)
;;インストールディレクトリを設定する 初期値は ~/.emacs.d/auto-install/
(setq auto-install-directory "~/.emacs.d/elisp/")
;; 起動時にEmacsWikiのページ名を補完候補に加える
;;(auto-install-update-emacswiki-package-name t)
;; ediff関連のバッファを1つのフレームにまとめる
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
;; install-elisp の関数を利用可能にする
(auto-install-compatibility-setup)

