;;;式の評価結果を注釈するための設定(lispxmp.el)
;; (M-x package-install lispxmp)
(require 'lispxmp)
;; emacs-lisp-modeでC-c C-dを押すと注釈される
(define-key emacs-lisp-mode-map (kbd "C-c C-d") 'lispxmp)

