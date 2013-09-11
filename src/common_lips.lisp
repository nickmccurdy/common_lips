;;;; common_lips.lisp

(in-package #:common_lips)

; Converts source code between Lips and Lisp by swapping all left and right
; parenthesis
;
; @param [String] code a String of source code to convert
;
; @return [String] the converted source code
(defun convert (code)
  (map 'string
       #'(lambda (c)
           (cond ((string= c #\)) #\()
                 ((string= c #\() #\))
                 (t c)))
       code))

; Executes Common Lips code and returns the resulting stdout as a String.
; This works by converting the code to Common Lisp and then calling run_lisp.
;
; @param [String] code the Lips code to execute
;
; @return [String] the result of the Lips program, with leading and trailing
; whitespace removed
(defun run (code)
  (eval (read-from-string (convert code))))
