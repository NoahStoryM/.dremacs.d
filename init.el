;;; init.el --- User Initialization File -*- lexical-binding: t -*-

(with-eval-after-load 'package
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t))

(setopt custom-file (file-name-concat private-cache-directory "custom.el"))
(load custom-file t)

(let ((scope-path (file-name-concat user-dremacs-directory "pkgs")))
  (meta-install-scope "user" scope-path))
(meta-import (private))

(setopt gc-cons-threshold (or private--initial-gc-threshold 800000))
