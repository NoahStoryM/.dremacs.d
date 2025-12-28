;; -*- lexical-binding: t -*-

(use-package pyim
  :ensure t
  :defer t
  :custom
  (pyim-page-length 9)
  (pyim-page-style 'vertical)
  :config
  (pyim-scheme-add
   '(guobiao-shuangpin
     :document "国标双拼方案"
     :class shuangpin
     :first-chars "abcdefghijklmnopqrstuvwxyz"
     :rest-chars  "abcdefghijklmnopqrstuvwxyz"
     :prefer-triggers nil
     :cregexp-support-p t
     :keymaps
     (("a" "a" "a")
      ("b" "b" "ei")
      ("c" "c" "ao")
      ("d" "d" "ian")
      ("e" "e" "e")
      ("f" "f" "an")
      ("g" "g" "ang")
      ("h" "h" "eng")
      ("i" "ch" "i")
      ("j" "j" "ing")
      ("k" "k" "ai")
      ("l" "l" "in" "er")
      ("m" "m" "iao")
      ("n" "n" "iang" "uang")
      ("o" "o" "o" "uo")
      ("p" "p" "ou")
      ("q" "q" "ia" "ua")
      ("r" "r" "en")
      ("s" "s" "iong" "ong")
      ("t" "t" "ie")
      ("u" "sh" "u")
      ("v" "zh" "v" "ui")
      ("w" "w" "van" "uan")
      ("x" "x" "ve" "ue")
      ("y" "y" "iu" "uai")
      ("z" "z" "vn" "un")
      ("aa" "a")
      ("ak" "ai")
      ("af" "an")
      ("ag" "ang")
      ("ac" "ao")
      ("ae" "e")
      ("ab" "ei")
      ("ar" "en")
      ("ah" "eng")
      ("al" "er")
      ("ao" "o")
      ("ap" "ou"))))
  (pyim-default-scheme 'guobiao-shuangpin))

(meta-export (private packages pyim))
