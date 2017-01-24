;;; helm
;;(package-install 'helm)
(require 'helm-config)
(helm-mode 1)
;;(helm-migemo-mode 1)

;; C-hで前の文字削除
(define-key helm-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

;;(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
;;(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)


;; キーバインド
(global-set-key (kbd "C-c h") 'helm-mini)
;;(global-set-key (kbd "C-x o") 'helm-mini)
(global-set-key (kbd "<f10>") 'helm-mini)
(define-key global-map (kbd "C-x b")   'helm-buffers-list)
;;(define-key global-map (kbd "C-x b") 'helm-for-files)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "M-x")     'helm-M-x)
(define-key global-map (kbd "M-y")     'helm-show-kill-ring)

