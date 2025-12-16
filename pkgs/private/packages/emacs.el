;; -*- lexical-binding: t -*-

(use-package emacs
  :init
  (when (display-graphic-p)
    (context-menu-mode))

  :config
  (set-face-attribute 'default nil :family "Maple Mono NL NF CN" :height #x88)
  (blink-cursor-mode -1)
  (pixel-scroll-precision-mode)
  (cua-mode)
  (xterm-mouse-mode 1)

  :custom
  ;; --- Basic Settings ---
  (inhibit-splash-screen t)
  (initial-major-mode 'org-mode)
  (display-time-default-load-average nil)
  (sentence-end-double-space nil)

  ;; --- Backup Configuration ---
  (defun private--backup-file-name (fpath)
    "Return a new file path of a given file path.
If the new path's directories do not exist, create them."
    (let* ((backup-root-dir (file-name-concat private-cache-directory "emacs-backup"))
           (file-path (replace-regexp-in-string "[A-Za-z]:" "" fpath)) ; Remove Windows driver letter
           (backup-file-path (replace-regexp-in-string "//" "/" (concat backup-root-dir file-path "~"))))
      (make-directory (file-name-directory backup-file-path) t)
      backup-file-path))
  (make-backup-file-name-function 'private--backup-file-name)

  ;; --- Minibuffer & Completion (Native UI) ---
  (enable-recursive-minibuffers t)
  (completion-cycle-threshold 1)
  (completions-detailed t)
  (tab-always-indent 'complete)

  ;; Native completion UI settings (Relevant if not using Vertico)
  (completion-auto-help 'always)
  (completions-max-height 20)
  (completions-format 'one-column)
  (completions-group t)
  (completion-auto-select 'second-tab)

  ;; --- Visual Tweaks ---
  (x-underline-at-descent-line nil)
  (show-trailing-whitespace nil)
  (indicate-buffer-boundaries 'left)

  ;; --- Buffer Switching ---
  (switch-to-buffer-obey-display-actions t)

  ;; --- Horizontal Scrolling ---
  (mouse-wheel-tilt-scroll t)
  (mouse-wheel-flip-direction t)

  ;; --- Indentation Defaults (Recommended) ---
  (indent-tabs-mode nil)
  (tab-width 4)

  :hook
  (after-init . help-quick)

  :bind
  ;; Make TAB in minibuffer behave like shell completion
  (:map minibuffer-mode-map ("TAB" . minibuffer-complete)))

(meta-export (private packages emacs))
