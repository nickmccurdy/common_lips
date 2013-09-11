(defun file-string (path)
  ; From http://rosettacode.org/wiki/Read_entire_file#Common_Lisp
  "Load the entire contents of some text file as a single string variable."
  (with-open-file (stream path)
    (let ((data (make-string (file-length stream))))
      (read-sequence data stream)
      data)))

(defconstant lips-file (file-string "test/samples/fib.lips"))
(defconstant lisp-file (file-string "test/samples/fib.lisp"))
