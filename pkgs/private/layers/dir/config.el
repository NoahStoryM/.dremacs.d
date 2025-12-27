;; -*- lexical-binding: t -*-

(meta-import (private layers dir packages))

(use-package dirvish
  :init
  (dirvish-override-dired-mode)

  :custom
  (dirvish-quick-access-entries
   '(("h" "~/"                          "Home")
     ("d" "~/Downloads/"                "Downloads")
     ("m" "/mnt/"                       "Drives")
     ("s" "/ssh:my-remote-server")      "SSH server"
     ("e" "/sudo:root@localhost:/etc")  "Modify program settings"
     ("t" "~/.local/share/Trash/files/" "TrashCan")))
  (dirvish-mode-line-format '(:left (sort symlink) :right (omit yank index)))
  (dirvish-attributes '(vc-state subtree-state nerd-icons collapse git-msg file-time file-size))
  (dirvish-side-attributes '(vc-state nerd-icons collapse file-size))
  (dirvish-large-directory-threshold #x5000)

  :config
  (dirvish-peek-mode)                   ; Preview files in minibuffer
  (dirvish-side-follow-mode)

  :hook
  (dirvish-mode . (lambda () (setq-local mouse-1-click-follows-link nil))))

(use-package dired-x
  :custom
  ;; Make dired-omit-mode hide all "dotfiles"
  (dired-omit-files (concat dired-omit-files "\\|^\\..*$")))

;; (use-package diredfl
;;   :hook
;;   ((dired-mode . diredfl-mode)
;;    ;; highlight parent and directory preview as well
;;    (dirvish-directory-view-mode . diredfl-mode)))

(meta-export (private layers dir config))
