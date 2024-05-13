;;; helm
;;(package-install 'helm)
(require 'helm)
;;(require 'helm-config)
(helm-mode 1)
;;(helm-migemo-mode 1)

;; 検索エンジンをripgrepに変更する
(custom-set-variables
 '(helm-ag-base-command "rg --no-heading --line-number --color never")
 `(helm-ag-success-exit-status '(0 2)))

;;(setq helm-ag-base-command "rg --no-heading")
;;(setq helm-ag-success-exit-status '(0 2))

;; 候補表示画面で改行しないようにする
;;(setq helm-truncate-lines t)

;; C-hで前の文字削除
(define-key helm-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

;;(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
;;(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)


;; キーバインド
(global-set-key (kbd "C-o") 'helm-recentf)
(global-set-key (kbd "C-c a") 'helm-do-ag)
(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "M-G") 'helm-ag)
(define-key global-map (kbd "C-x b")   'helm-buffers-list)
;;(define-key global-map (kbd "C-x b") 'helm-for-files)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "M-x")     'helm-M-x)
(define-key global-map (kbd "M-y")     'helm-show-kill-ring)
(define-key global-map (kbd "<help> b") 'helm-descbinds)
