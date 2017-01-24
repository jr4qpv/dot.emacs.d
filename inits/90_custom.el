;;
;; customizeの出力先
;;
(setq custom-file "~/.emacs.d/custom-file.el")
(if (file-exists-p (expand-file-name "~/.emacs.d/custom-file.el"))
    (load (expand-file-name custom-file) t nil nil))
