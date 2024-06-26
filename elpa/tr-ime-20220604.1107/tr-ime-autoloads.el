;;; tr-ime-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from tr-ime.el

(autoload 'tr-ime-detect-ime-patch-p "tr-ime" "\
Return non-nil if an IME patch seems to be applied to Emacs.")
(autoload 'tr-ime-standard-install "tr-ime" "\
Install tr-ime standard (stable but less functionality) DLL.

If NO-CONFIRM is non-nil, download the necessary module DLL without
confirming the user.

(fn &optional NO-CONFIRM)")
(autoload 'tr-ime-standard-initialize "tr-ime" "\
Initialize tr-ime standard (stable but less functionality) features.")
(autoload 'tr-ime-advanced-install "tr-ime" "\
Install tr-ime advanced (experimental but more functionality) DLL.

If NO-CONFIRM is non-nil, download the necessary module DLL without
confirming the user.

(fn &optional NO-CONFIRM)")
(autoload 'tr-ime-advanced-initialize "tr-ime" "\
Initialize tr-ime advanced (experimental but more functionality) features.")
(autoload 'tr-ime-uninitialize "tr-ime" "\
Uninitialize tr-ime features.")
(register-definition-prefixes "tr-ime" '("tr-ime-"))


;;; Generated autoloads from tr-ime-debug.el

(register-definition-prefixes "tr-ime-debug" '("tr-ime-debug-"))


;;; Generated autoloads from tr-ime-documentfeed.el

(register-definition-prefixes "tr-ime-documentfeed" '("tr-ime-documentfeed-"))


;;; Generated autoloads from tr-ime-download.el

(register-definition-prefixes "tr-ime-download" '("tr-ime-download-"))


;;; Generated autoloads from tr-ime-font.el

(register-definition-prefixes "tr-ime-font" '("tr-ime-font-"))


;;; Generated autoloads from tr-ime-hook.el

(register-definition-prefixes "tr-ime-hook" '("tr-ime-hook-"))


;;; Generated autoloads from tr-ime-isearch.el

(register-definition-prefixes "tr-ime-isearch" '("tr-ime-isearch-"))


;;; Generated autoloads from tr-ime-openstatus.el

(register-definition-prefixes "tr-ime-openstatus" '("tr-ime-openstatus-"))


;;; Generated autoloads from tr-ime-prefix-key.el

(register-definition-prefixes "tr-ime-prefix-key" '("tr-ime-prefix-key-"))


;;; Generated autoloads from tr-ime-reconversion.el

(register-definition-prefixes "tr-ime-reconversion" '("tr-ime-reconversion-"))


;;; Generated autoloads from tr-ime-recv-notify.el

(register-definition-prefixes "tr-ime-recv-notify" '("tr-ime-recv-notify-"))


;;; Generated autoloads from tr-ime-subclassify.el

(register-definition-prefixes "tr-ime-subclassify" '("tr-ime-subclassify-"))


;;; Generated autoloads from tr-ime-sync.el

(register-definition-prefixes "tr-ime-sync" '("tr-ime-sync-"))


;;; Generated autoloads from tr-ime-thread-message.el

(register-definition-prefixes "tr-ime-thread-message" '("tr-ime-thread-message-"))


;;; Generated autoloads from tr-ime-workaround-inconsistent.el

(register-definition-prefixes "tr-ime-workaround-inconsistent" '("tr-ime-workaround-inconsistent"))


;;; Generated autoloads from tr-ime-workaround-isearch.el

(register-definition-prefixes "tr-ime-workaround-isearch" '("tr-ime-workaround-isearch-"))


;;; Generated autoloads from tr-ime-workaround-prefix-key.el

(register-definition-prefixes "tr-ime-workaround-prefix-key" '("tr-ime-workaround-prefix-key-"))

;;; End of scraped data

(provide 'tr-ime-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; tr-ime-autoloads.el ends here
