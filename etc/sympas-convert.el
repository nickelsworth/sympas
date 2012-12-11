;; emacs code used while porting the html to org-mode

(defun replace (string with-what)
  "borrowed from the docs for replace string, which causes trouble when used in scripts (because it stops execution when no match is found)"
  (goto-char (point-min))
  (while (search-forward string nil t)
    (replace-match with-what 'fixedcase t)))
  
(defun sympas-convert ()
  "clean up dr von thun's book"
  (interactive "*")
  (replace "<H1>" "#+title: Chapter x : ")
  (replace "</H1>" "\n* <<intro>>")
  (replace "<H2>" "\n* ")  (replace "</H2>" "")
  (replace "<H3>" "\n** ")  (replace "</H3>" "")
  (replace "<PRE>" "\n#+begin_src pascal")
  (replace "</PRE>" "#+end_src\n")
  (replace "<XMP>" "\n#+begin_example")
  (replace "</XMP>" "#+end_example\n")
  (replace "<CODE>" "=")  (replace "</CODE>" "=")
  (replace "<EM>" "/")  (replace "</EM>" "/")
  (replace "<P>" "")
  (replace "&lt;" "<")
  (replace "</body>\n</HTML>" "")
  (replace "\n\n\n" "\n\n"))


