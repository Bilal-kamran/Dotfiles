;;; blueth-theme.el --- blueth
;;; Version: 1.0
;;; Commentary:
;;; A theme called blueth
;;; Code:

(deftheme blueth "DOCSTRING for blueth")
  (custom-theme-set-faces 'blueth
   '(default ((t (:foreground "#62dcfa" :background "#040013" ))))
   '(cursor ((t (:background "#717171" ))))
   '(fringe ((t (:background "#1c1e41" ))))
   '(mode-line ((t (:foreground "#b9b9b9" :background "#283b6c" ))))
   '(region ((t (:background "#313131" ))))
   '(secondary-selection ((t (:background "#151515" ))))
   '(font-lock-builtin-face ((t (:foreground "#19fe91" ))))
   '(font-lock-comment-face ((t (:foreground "#868686" ))))
   '(font-lock-function-name-face ((t (:foreground "#b540da" ))))
   '(font-lock-keyword-face ((t (:foreground "#fb6234" ))))
   '(font-lock-string-face ((t (:foreground "#44bb26" ))))
   '(font-lock-type-face ((t (:foreground "#cc627f" ))))
   '(font-lock-constant-face ((t (:foreground "#bd88e3" ))))
   '(font-lock-variable-name-face ((t (:foreground "#00bbff" ))))
   '(minibuffer-prompt ((t (:foreground "#2672bb" :bold t ))))
   '(font-lock-warning-face ((t (:foreground "red" :bold t ))))
   )

;;;###autoload
(and load-file-name
    (boundp 'custom-theme-load-path)
    (add-to-list 'custom-theme-load-path
                 (file-name-as-directory
                  (file-name-directory load-file-name))))
;; Automatically add this theme to the load path

(provide-theme 'blueth)

;;; blueth-theme.el ends here
