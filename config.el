(require 'crafted-defaults)    ; Sensible default settings for Emacs
(require 'crafted-updates)     ; Tools to upgrade Crafted Emacs
(require 'crafted-completion)  ; selection framework based on `vertico`
(require 'crafted-ui)          ; Better UI experience (modeline etc.)
(require 'crafted-windows)     ; Window management configuration
;;(require 'crafted-editing)     ; Whitspace trimming, auto parens etc.
(require 'crafted-evil)        ; An `evil-mode` configuration
(require 'crafted-org)         ; org-appear, clickable hyperlinks etc.
(require 'crafted-project)     ; built-in alternative to projectile
(require 'crafted-speedbar)    ; built-in file-tree
(require 'crafted-latex)    ; built-in file-tree
(require 'crafted-osx)    ; built-in file-tree
;(require 'crafted-screencast)  ; show current command and binding in modeline



(customize-set-variable mac-right-option-modifier nil)
(customize-set-variable mac-command-modifier 'super)
(customize-set-variable ns-function-modifier 'hyper)

;; Keybinds

(global-set-key (kbd "s-W") 'delete-frame) ; ⌘-W = Close window
(global-set-key (kbd "s-}") 'tab-bar-switch-to-next-tab) ; ⌘-} = Next tab
(global-set-key (kbd "s-{") 'tab-bar-switch-to-prev-tab) ; ⌘-{ = Previous tab
(global-set-key (kbd "s-t") 'tab-bar-new-tab) ;⌘-t = New tab
(global-set-key (kbd "s-w") 'tab-bar-close-tab) ; ⌘-w = Close tab

(unless (< emacs-major-version 28)
  (global-set-key (kbd "s-Z") 'undo-redo)) ; ⌘-Z = Redo


;; Magit
(global-set-key (kbd "C-c g") 'magit-file-dispatch)

;; Opening things
(global-set-key (kbd "C-c o m") 'notmuch)


(defun jab/kill-this-buffer ()
  "Kill the current buffer."
  (interactive)
  (kill-buffer (current-buffer)))

;; I only ever want to kill the current buffer
(global-set-key (kbd "C-x k") 'jab/kill-this-buffer)

;; Theme and fonts
(load-theme 'modus-operandi t)
(add-to-list 'default-frame-alist '(font . "Iosevka Comfy 16" ))
(setq initial-frame-alist '((width . 120) (height . 61)))


;; Keep backup files, but get them out of the way.
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Deal with emacs backup files
(setq backup-by-copying t
      backup-directory-alist
      '(("." . "~/.backups/"))    ; keep them out of the way
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

;;; parentheses
(electric-pair-mode 1) ; auto-insert matching bracket
(show-paren-mode 1)    ; turn on paren match highlighting

(add-to-list 'load-path "~/Sync/emacs/lisp/")
(add-to-list 'load-path "~/.crafted-emacs/lisp/")

(global-visual-line-mode)

;; To avoid issues I was having with package-install
(setq package-check-signature nil)

(which-key-mode)
(yas-global-mode 1)

(with-eval-after-load 'ox
  (require 'ox-hugo))

(load "./lisp/jab-denote.el")
(load "./lisp/jab-notmuch.el")
(load "./lisp/jab-orgmode.el")
(load "./lisp/jab-latex.el")
