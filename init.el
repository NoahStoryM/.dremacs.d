;;; init.el --- User Initialization File -*- lexical-binding: t -*-

;; This configuration targets Emacs 31 (the DrEmacs framework itself only
;; needs 29).  It relies on `which-key' being built in (30) and on child
;; frames in terminal Emacs for Corfu popups (31).
(when (< emacs-major-version 31)
  (display-warning 'dremacs "This configuration targets Emacs 31 or newer"))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(unless package-archive-contents (package-read-all-archive-contents))

;; `user-emacs-directory' already points to `.local/' (see early-init.el).
(setopt custom-file (file-name-concat user-emacs-directory "custom.el"))
(load custom-file t)

(let ((scope-path (file-name-concat user-dremacs-directory "pkgs")))
  (meta-install-scope "user" scope-path))
(meta-import (private))

;; Restore a GC threshold that still suits LSP/completion workloads; the
;; stock 800KB triggers frequent collections with eglot and corfu.
(add-hook 'emacs-startup-hook
          (lambda () (setq gc-cons-threshold (* 16 1024 1024))))
