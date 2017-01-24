;; .grep拡張子はにgrepモードにする
(add-to-list 'auto-mode-alist 
             (cons "\\.grep$" 'grep-mode))
