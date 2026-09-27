;; -*- lexical-binding: t -*-

;;; Minibuffer and in-buffer completion.

(use-package vertico
  :ensure t
  :custom
  (vertico-cycle t)
  :init
  (vertico-mode)
  :bind
  (:map
   vertico-map
   ("C-j" . vertico-previous)
   ("C-l" . vertico-next)))

(use-package vertico-directory          ; part of vertico
  :after vertico
  :bind
  (:map
   vertico-map
   ("C-k" . vertico-directory-delete-word)))

(use-package orderless
  :ensure t
  :demand t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-defaults nil)
  (completion-category-overrides '((file (styles partial-completion)))))

(use-package marginalia
  :ensure t
  :init
  (marginalia-mode))

(use-package corfu
  :ensure t
  :custom
  (corfu-auto t)
  (corfu-cycle t)
  (corfu-quit-no-match 'separator)
  (corfu-preselect 'prompt)
  (corfu-auto-prefix 2)
  :init
  (global-corfu-mode)
  :bind
  (:map
   corfu-map
   ("C-n" . corfu-next)
   ("C-p" . corfu-previous)
   ("SPC" . corfu-insert-separator)
   ("C-j" . corfu-previous)
   ("C-l" . corfu-next)
   ("C-k" . corfu-quit)))

(use-package corfu-popupinfo            ; part of corfu
  :after corfu
  :custom
  (corfu-popupinfo-delay '(0.25 . 0.1))
  (corfu-popupinfo-hide nil)
  :config
  (corfu-popupinfo-mode))

(use-package kind-icon
  :ensure t
  :if (display-graphic-p)
  :after corfu
  :config
  (add-to-list 'corfu-margin-formatters #'kind-icon-margin-formatter))

(use-package cape
  :ensure t
  :defer t
  :init
  (add-to-list 'completion-at-point-functions #'cape-dabbrev)
  (add-to-list 'completion-at-point-functions #'cape-file))
