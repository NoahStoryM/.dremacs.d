;; -*- lexical-binding: t -*-

(use-package corfu
  :ensure t
  :defer t
  :custom
  (corfu-auto t)
  (corfu-cycle t)
  (corfu-quit-no-match 'separator)
  :bind
  (:map corfu-map
        ("C-n" . corfu-next)
        ("C-p" . corfu-previous)
        ("SPC" . corfu-insert-separator)))

(use-package corfu-popupinfo
  :after corfu
  :ensure nil
  :hook
  (corfu-mode . corfu-popupinfo-mode)
  :custom
  (corfu-popupinfo-delay '(0.25 . 0.1))
  (corfu-popupinfo-hide nil)
  :config
  (corfu-popupinfo-mode))

(meta-export (private packages corfu))
