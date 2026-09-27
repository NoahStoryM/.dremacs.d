;; -*- lexical-binding: t -*-

;;; Directory browsing.

(use-package dirvish
  :ensure t
  :defer t
  :init
  (with-eval-after-load 'dired
    (dirvish-override-dired-mode))

  :custom
  (dirvish-quick-access-entries
   '(("h" "~/"                          "Home")
     ("d" "~/Downloads/"                "Downloads")
     ("m" "/mnt/"                       "Drives")
     ("s" "/ssh:my-remote-server"       "SSH server")
     ("e" "/sudo:root@localhost:/etc"   "Modify program settings")
     ("t" "~/.local/share/Trash/files/" "TrashCan")))
  (dirvish-mode-line-format '(:left (sort symlink) :right (omit yank index)))
  (dirvish-attributes '(vc-state subtree-state nerd-icons collapse git-msg file-time file-size))
  (dirvish-side-attributes '(vc-state nerd-icons collapse file-size))
  (dirvish-large-directory-threshold #x5000)

  :config
  (dirvish-peek-mode)                   ; Preview files in minibuffer
  (dirvish-side-follow-mode)

  :hook
  (dirvish-mode . (lambda () (setq-local mouse-1-click-follows-link nil)))

  :bind
  ("M-`" . dirvish-side)
  (:map
   dirvish-mode-map
   ("?" . dirvish-dispatch)          ; [?] a helpful cheatsheet
   ("a" . dirvish-setup-menu)        ; [a]ttributes settings:`t' toggles mtime, `f' toggles fullframe, etc.
   ("f" . dirvish-file-info-menu)    ; [f]ile info
   ("o" . dirvish-quick-access)      ; [o]pen `dirvish-quick-access-entries'
   ("s" . dirvish-quicksort)         ; [s]ort flie list
   ("r" . dirvish-history-jump)      ; [r]ecent visited
   (";" . dirvish-ls-switches-menu)
   ("y" . dirvish-vc-menu)
   ("*" . dirvish-mark-menu)
   ("v" . dirvish-yank-menu)
   ("N" . dirvish-narrow)
   ("'" . dirvish-history-last)
   ("i" . dirvish-subtree-toggle)
   ("<tab>" . dirvish-subtree-toggle)
   ("M-f" . dirvish-history-go-forward)
   ("M-b" . dirvish-history-go-backward)
   ("M-e" . dirvish-emerge-menu)
   ("<mouse-1>" . dirvish-subtree-toggle-or-open)
   ("<mouse-2>" . dired-mouse-find-file-other-window)
   ("<mouse-3>" . dired-mouse-find-file)))

(use-package dired-x
  :after dired
  :config
  ;; Make dired-omit-mode hide all "dotfiles".  This refers to the default
  ;; value, so it must run after dired-x loads, not as a `:custom'.
  (setq dired-omit-files (concat dired-omit-files "\\|^\\..*$")))

;; `dired-du-mode' runs du recursively on every listed directory, which is
;; slow on large trees and overlaps with dirvish's `file-size'.  Toggle it
;; with M-x dired-du-mode when needed.
(use-package dired-du
  :ensure t
  :commands dired-du-mode)

;; (use-package diredfl
;;   :ensure t
;;   :config
;;   (set-face-attribute 'diredfl-dir-name nil :bold t)
;;   :hook
;;   ((dired-mode . diredfl-mode)
;;    ;; highlight parent and directory preview as well
;;    (dirvish-directory-view-mode . diredfl-mode)))
