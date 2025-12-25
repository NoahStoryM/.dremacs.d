;; -*- lexical-binding: t -*-

(meta-import (private layers default utils))

(use-package emacs
  :init
  (when (display-graphic-p)
    (context-menu-mode))

  :config
  ;; --- Global mode Settings ---
  (show-paren-mode 1)
  (electric-pair-mode 1)
  (blink-cursor-mode -1)
  (pixel-scroll-precision-mode)
  (xterm-mouse-mode 1)
  (delete-selection-mode 1)

  ;; --- Font Settings ---
  (when (find-font (font-spec :family "Maple Mono NL NF CN"))
    (set-face-attribute 'default nil :family "Maple Mono NL NF CN" :height 135))

  :custom
  ;; --- Basic Settings ---
  (delete-by-moving-to-trash t)
  (inhibit-splash-screen t)
  (initial-major-mode 'org-mode)
  (display-time-default-load-average nil)
  (sentence-end-double-space nil)
  (select-enable-primary t)

  ;; --- Backup Configuration ---
  (make-backup-files t)
  (version-control t)
  (backup-by-copying t)
  (delete-old-versions t)
  (kept-new-versions 6)
  (kept-old-versions 2)
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

  ;; --- Treesitter ---
  (major-mode-remap-alist
   '((yaml-mode . yaml-ts-mode)
     (bash-mode . bash-ts-mode)
     (js2-mode . js-ts-mode)
     (typescript-mode . typescript-ts-mode)
     (json-mode . json-ts-mode)
     (css-mode . css-ts-mode)
     (python-mode . python-ts-mode)))

  :hook
  (text-mode . visual-line-mode)
  (prog-mode . (lambda ()
                 (electric-pair-mode)
                 (setq show-trailing-whitespace t))))

(use-package autorevert
  :config
  (global-auto-revert-mode)
  :custom
  (auto-revert-avoid-polling t)
  (auto-revert-interval 5)
  (auto-revert-check-vc-info t))

(use-package savehist
  :config
  (savehist-mode)
  :custom
  (savehist-file (file-name-concat private-cache-directory "savehist")))

(use-package which-key
  :config
  (which-key-mode))

(use-package display-line-numbers
  :custom
  (display-line-numbers-type 'visual)
  (display-line-numbers-width nil)
  :hook
  ((prog-mode text-mode) . display-line-numbers-mode))

(use-package hl-line
  :hook
  ((prog-mode text-mode) . hl-line-mode))

(use-package tab-bar
  :custom
  (tab-bar-show 1))

(use-package tab-line
  :config
  (global-tab-line-mode))

(use-package eglot
  ;; Configure hooks to automatically turn-on eglot for selected modes
  :hook
  ((python-mode ruby-mode elixir-mode) . eglot-ensure)

  :config
  (fset #'jsonrpc--log-event #'ignore) ; massive perf boost---don't log every event
  ;; Sometimes you need to tell Eglot where to find the language server
  ;; (add-to-list 'eglot-server-programs
  ;;              '(haskell-mode . ("haskell-language-server-wrapper" "--lsp")))

  :custom
  (eglot-extend-to-xref t)             ; activate Eglot in referenced non-project files
  (eglot-send-changes-idle-time 0.1))

(meta-export (private layers default config))
