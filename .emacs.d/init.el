;; Set backup directory
(setq backup-directory-alist '((".*" . "~/.local/share/Trash/files")))

;; Font configuration
(set-face-attribute 'default nil
  :font "FiraCode Nerd Font"
  :height 140
  :weight 'medium)
(set-face-attribute 'variable-pitch nil
  :font "Ubuntu"
  :height 160
  :weight 'medium)
(set-face-attribute 'fixed-pitch nil
  :font "FiraCode Nerd Font"
  :height 140
  :weight 'medium)
(set-face-attribute 'font-lock-comment-face nil
  :slant 'italic)
(set-face-attribute 'font-lock-keyword-face nil
  :slant 'italic)
(add-to-list 'default-frame-alist '(font . "FiraCode Nerd Font Mono"))
(setq-default line-spacing 0.12)

;; Minibuffer escape
(global-set-key [escape] 'keyboard-escape-quit)

;; Add the lisp folder to load path
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Load and configure org-superstar
(when (locate-library "org-superstar")
  (require 'org-superstar)
  (add-hook 'org-mode-hook #'org-superstar-mode)
  (setq org-superstar-headline-bullets-list '("◉" "○" "✸" "✿")
        org-superstar-item-bullet-alist '((?+ . ?•) (?- . ?➤))
        org-hide-leading-stars t
        org-superstar-leading-bullet ?‧))

;; Customize Org level headers
(custom-set-faces
 '(org-level-1 ((t (:inherit outline-1 :height 1.7))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.6))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.5))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.4))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.3))))
 '(org-level-6 ((t (:inherit outline-5 :height 1.2))))
 '(org-level-7 ((t (:inherit outline-5 :height 1.1)))))

;; Enable org-tempo for source block tag expansion
(require 'org-tempo)

;; Sane defaults
(delete-selection-mode 1)    ;; Allow typing over selected text
(electric-indent-mode -1)    ;; Disable automatic indentation
(electric-pair-mode 1)       ;; Enable automatic pairing of brackets
(add-hook 'org-mode-hook (lambda ()
                           (setq-local electric-pair-inhibit-predicate
                                       `(lambda (c)
                                          (if (char-equal c ?<) t (,electric-pair-inhibit-predicate c))))))
(global-auto-revert-mode t)  ;; Auto-reload files when they change
(global-display-line-numbers-mode 1) ;; Enable line numbers
(global-visual-line-mode t)  ;; Enable soft wrapping of long lines
(menu-bar-mode -1)           ;; Disable menu bar
(scroll-bar-mode -1)         ;; Disable scroll bar
(tool-bar-mode -1)           ;; Disable tool bar
(setq org-edit-src-content-indentation 0) ;; Set Org source block indentation to 0

;; Theme configuration with the lisp directory
(add-to-list 'custom-theme-load-path "~/.emacs.d/lisp/")
(load-theme 'blueth t)

;; Transparency
(add-to-list 'default-frame-alist '(alpha-background . 95))

;; Load and enable toc-org
(when (locate-library "toc-org")
  (require 'toc-org)
  (add-hook 'org-mode-hook 'toc-org-enable))
