;; -*- lexical-binding: t -*-

(defconst private--treesit-remaps
  '((yaml-mode       yaml-ts-mode       yaml)
    (sh-mode         bash-ts-mode       bash)
    (js-mode         js-ts-mode         javascript)
    (js2-mode        js-ts-mode         javascript)
    (typescript-mode typescript-ts-mode typescript)
    (json-mode       json-ts-mode       json)
    (html-mode       html-ts-mode       html)
    (css-mode        css-ts-mode        css)
    (c-mode          c-ts-mode          c)
    (c++-mode        c++-ts-mode        cpp)
    (c-or-c++-mode   c-or-c++-ts-mode   c cpp)
    (csharp-mode     csharp-ts-mode     c-sharp)
    (java-mode       java-ts-mode       java)
    (python-mode     python-ts-mode     python))
  "Entries of the form (MODE TS-MODE LANGUAGE...).")

(defun private--treesit-remap-alist ()
  "Return `major-mode-remap-alist' entries whose ts-mode can actually run."
  (when (and (fboundp 'treesit-available-p) (treesit-available-p))
    (let (alist)
      (pcase-dolist (`(,mode ,ts-mode . ,langs) private--treesit-remaps)
        (when (and (fboundp ts-mode)
                   (seq-every-p #'treesit-language-available-p langs))
          (push (cons mode ts-mode) alist)))
      (nreverse alist))))
