(in-package #:common_lips)
(in-package :it.bese.fiveam)

(def-suite :common_lips)
(in-suite :common_lips)

(defun file-string (path)
  ; From http://rosettacode.org/wiki/Read_entire_file#Common_Lisp
  "Load the entire contents of some text file as a single string variable."
  (with-open-file (stream path)
    (let ((data (make-string (file-length stream))))
      (read-sequence data stream)
      data)))

(defconstant lips-file (file-string "test/samples/fib.lips"))
(defconstant lisp-file (file-string "test/samples/fib.lisp"))

(test converts-lips-code-to-lisp
      (is (string= lisp-file
             (common_lips:convert lips-file))))

(test converts-lisp-code-to-lips
      (is (string= lips-file
             (common_lips:convert lisp-file))))

(test runs-lips-code
      (is (= 4
             (common_lips:run ")+ 2 2("))))

(run!)
