;;; init.el --- User Initialization File -*- lexical-binding: t -*-

;; This configuration targets Emacs 31 (the DrEmacs framework itself only
;; needs 29).  It relies on `which-key' being built in (30) and on child
;; frames in terminal Emacs for Corfu popups (31).
(when (< emacs-major-version 31)
  (display-warning 'dremacs "This configuration targets Emacs 31 or newer"))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(unless package-archive-contents (package-read-all-archive-contents))

;; `:ensure t' asks package.el whether a package is installed.  Packages
;; installed by Guix (or any other way) live outside package.el, and it
;; does not always know them: Guix ships `embark-consult' inside
;; emacs-embark, for example.  Treat anything already on `load-path' as
;; installed, so package.el only downloads what is really missing.
(defun private-use-package-ensure (name args state &optional no-refresh)
  "Like `use-package-ensure-elpa', but skip packages already on `load-path'."
  (let ((missing
         (seq-remove (lambda (ensure)
                       (let ((package (cond ((eq ensure t) (use-package-as-symbol name))
                                            ((consp ensure) (car ensure))
                                            (t ensure))))
                         (and package (locate-library (symbol-name package)))))
                     args)))
    (when missing
      (use-package-ensure-elpa name missing state no-refresh))))
(setq use-package-ensure-function #'private-use-package-ensure)

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
