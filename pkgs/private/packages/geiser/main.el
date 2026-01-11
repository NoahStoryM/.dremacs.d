;; -*- lexical-binding: t -*-

(use-package geiser
  :ensure t
  :defer t)

(use-package geiser-chez
  :ensure t
  :defer t)

;; (use-package geiser-chibi
;;   :ensure t
;;   :defer t)

;; (use-package geiser-chicken
;;   :ensure t
;;   :defer t)

;; (use-package geiser-gambit
;;   :ensure t
;;   :defer t)

(use-package geiser-gauche
  :ensure t
  :defer t)

(use-package geiser-guile
  :ensure t
  :defer t)

;; (use-package geiser-kawa
;;   :ensure t
;;   :defer t)

;; (use-package geiser-mit
;;   :ensure t
;;   :defer t)

(use-package geiser-racket
  :ensure t
  :defer t)

;; (use-package geiser-stklos
;;   :ensure t
;;   :defer t)

(meta-export (private packages geiser))
