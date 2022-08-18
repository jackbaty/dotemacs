;;; custom.el ---                                    -*- lexical-binding: t; -*-

;; Copyright (C) 2022  Jack Baty

;; Author: Jack Baty <jbaty@MBP.local>
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bookmark-set-fringe-mark nil)
 '(custom-safe-themes
   '("00cec71d41047ebabeb310a325c365d5bc4b7fab0a681a2a108d32fb161b4006" "2078837f21ac3b0cc84167306fa1058e3199bbd12b6d5b56e3777a4125ff6851" "02f57ef0a20b7f61adce51445b68b2a7e832648ce2e7efb19d217b6454c1b644" default))
 '(olivetti-style 'fancy)
 '(package-selected-packages
   '(ox-hugo yasnippet olivetti doom-themes writeroom-mode magit auctex org-journal which-key ol-notmuch notmuch denote vertico org-appear orderless marginalia helpful evil-nerd-commenter evil-collection embark-consult elisp-demos doom-modeline corfu-doc cape all-the-icons))
 '(safe-local-variable-values
   '((org-hugo-footer . "

[//]: # \"Exported with love from a post written in Org mode\"
[//]: # \"- https://github.com/kaushalmodi/ox-hugo\"")
     (org-download-image-dir . "img/2022/")))
 '(writeroom-global-effects
   '(writeroom-set-alpha writeroom-set-menu-bar-lines writeroom-set-tool-bar-lines writeroom-set-vertical-scroll-bars writeroom-set-bottom-divider-width))
 '(yas-snippet-dirs
   '("/Users/jbaty/Sync/emacs/yasnippets" "/Users/jbaty/.emacs.d/snippets")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line-buffer-id ((t (:foreground "SteelBlue1" :weight bold)))))
