



(map!
 "\C-c w m" 'copy-as-format-markdown)

(map!
 "s-t" 'tab-new)



(map! :map dired-mode-map "\C-c \C-n" #'dired-narrow)
