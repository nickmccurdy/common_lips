;;;; common-lips.lisp

(in-package #:common-lips)

(defun convert (code)
  "Converts a string of code between Lips and Lisp by swapping all left and right parenthesis."
  (map 'string
       #'(lambda (c)
           (cond ((string= c #\)) #\()
                 ((string= c #\() #\))
                 (t c)))
       code))

(defun run (code)
  "Converts a string of Lips code to Lisp, passes it to eval, and returns the result."
  (eval (read-from-string (convert code))))
