;; -*- lexical-binding: t -*-

(defun private--backup-file-name (fpath)
  "Return a new file path of a given file path.
If the new path's directories do not exist, create them."
  (let* ((backup-root-dir (file-name-concat private-cache-directory "emacs-backup"))
         (file-path (replace-regexp-in-string "[A-Za-z]:" "" fpath)) ; Remove Windows driver letter
         (backup-file-path (replace-regexp-in-string "//" "/" (concat backup-root-dir file-path "~"))))
    (make-directory (file-name-directory backup-file-path) t)
    backup-file-path))

(meta-export (private layers default utils))
