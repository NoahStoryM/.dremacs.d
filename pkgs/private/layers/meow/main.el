;; -*- lexical-binding: t -*-

;;; Modal editing.

(meta-import (private layers meow keybindings))

(use-package meow
  :ensure t
  :demand t
  :custom-face
  (meow-normal-cursor ((t (:inherit unspecified :background ,(face-attribute 'success :foreground)))))
  (meow-insert-cursor ((t (:inherit unspecified :background ,(face-attribute 'font-lock-keyword-face :foreground)))))
  (meow-motion-cursor ((t (:inherit unspecified :background ,(face-attribute 'font-lock-doc-face :foreground)))))
  :custom
  (meow-cheatsheet-layout meow-cheatsheet-layout-qwerty)
  (meow-use-clipboard t)
  :config
  (setq meow-cursor-type-normal 'hollow)
  (setq meow-cursor-type-motion 'hollow)
  (setq meow-cursor-type-keypad 'box)
  (private-meow-setup)
  (meow-global-mode 1))
