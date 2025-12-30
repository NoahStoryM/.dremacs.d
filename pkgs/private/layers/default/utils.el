;; -*- lexical-binding: t -*-

(defun private--backup-file-name (fpath)
  "Return a new file path of a given file path.
If the new path's directories do not exist, create them."
  (let* ((backupRootDir (concat user-emacs-directory "emacs-backup/"))
         (filePath (replace-regexp-in-string "[A-Za-z]:" "" fpath )) ; remove Windows driver letter in path
         (backupFilePath (replace-regexp-in-string "//" "/" (concat backupRootDir filePath "~") ))
         (backupDirPath (file-name-directory backupFilePath)))
    (make-directory backupDirPath backupDirPath)
    backupFilePath))

(meta-export (private layers default utils))
