;; -*- lexical-binding: t -*-

(use-package meow
  :ensure t
  :defer t
  :custom-face
  (meow-normal-cursor ((t (:inherit success))))
  (meow-insert-cursor ((t (:inherit font-lock-keyword-face))))
  (meow-motion-cursor ((t (:inherit font-lock-doc-face))))
  :custom
  (meow-cheatsheet-layout meow-cheatsheet-layout-qwerty)
  (meow-use-clipboard t)
  :config
  (defun meow--read-cursor-face-color (face)
    "Read cursor color from face."
    (if (memq face '(meow-normal-cursor
                     meow-insert-cursor
                     meow-motion-cursor))
        (face-foreground face nil t)
      (let ((f (face-attribute face :inherit)))
        (if (equal 'unspecified f)
            (let ((color (face-attribute face :background)))
              (if (equal 'unspecified color)
                  (face-attribute 'default :foreground)
                color))
          (meow--read-cursor-face-color f)))))
  (setq meow-cursor-type-normal 'hollow)
  (setq meow-cursor-type-motion 'hollow)
  (setq meow-cursor-type-keypad 'box))

(meta-export (private packages meow))
