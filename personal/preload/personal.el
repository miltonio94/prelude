(set-frame-parameter (selected-frame) 'fullscreen 'maximized)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(setq vc-follow-symlinks t)

(setq-default cursor-type 'bar)

;; (setup (:straight minions)
  ;;   (:hook-into doom-modeline-mode))


;; (prelude-require-package 'doom-modeline)
  ;;   (:hook-into after-init-hook)
  ;;   (:option doom-modeline-height 15
  ;;            doom-modeline-bar-width 6
  ;;            doom-modeline-lsp t
  ;;            doom-modeline-github nil
  ;;            doom-modeline-mu4e nil
  ;;            doom-modeline-irc nil
  ;;            doom-modeline-battery t
  ;;            doom-modeline-mirror-modes t
  ;;            doom-modeline-persp-name nil
  ;;            doom-modeline-buffer-file-name-style 'relative-to-project
  ;;            doom-modeline-major-mode-icon t)
  ;; (custom-set-faces '(mode-line ((t (:height 0.85))))
  ;;                   '(mode-line-inactive ((t (:height 0.85))))))

;; (mjp/leader-key-def
;;   "t" '(:ignore t :which-key "toggles")
;;   "tw" 'whitespace-mode
;;   "tt" '(counsel-load-theme :which-key "choose theme"))

;; (setup (:require paren)
;;   (set-face-attribute 'show-paren-match-expression nil :background "#d8dce2")
;;   (show-paren-mode 1))
;; (require 'paren)
 (set-face-background 'show-paren-match "#FFE4E1")
 (set-face-foreground 'show-paren-match  "#0c6e7b")
 (set-face-attribute 'show-paren-match nil :weight 'extra-bold)

(setq prelude-theme 'doom-old-hope)
(doom-themes-visual-bell-config)

(set-face-attribute 'default nil
                      :font "CaskaydiaCove Nerd Font Mono"
                      :weight 'normal
                      :height 170)

  (set-face-attribute 'fixed-pitch nil
                    :font "CaskaydiaCove Nerd Font Mono"
                    :weight 'normal
                    :height 170)
(set-face-attribute 'variable-pitch nil
                    ;; :font "Cantarell"
                    :font "CaskaydiaCove Nerd Font"
                    :height 150
                    :weight 'light)

;; Change user-emacs-directory to keep unwanted things out of ~/.config/emacs
(setq user-emacs-directory (expand-file-name "~/.cache/emacs/")
      url-history-file (expand-file-name "url/history" user-emacs-directory))
