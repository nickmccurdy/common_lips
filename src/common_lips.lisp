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
