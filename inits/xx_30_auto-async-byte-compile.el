;;; auto-async-byte-compileの設定
(require 'auto-async-byte-compile)
(setq auto-async-byte-compile-exclude-files-regexp "/junk/")
(setq auto-async-byte-compile-exclude-files-regexp "/inits/")
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)

