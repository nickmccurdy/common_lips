(in-package #:common_lips)
(in-package :it.bese.fiveam)

(def-suite :common_lips)
(in-suite :common_lips)

(defconstant lips-file ")defun fib )n(
  )if )< n 2(
    n
    )+ )fib )- n 1(( )fib )- n 2(((((

)format t \"~d\" )fib 10((")

(defconstant lisp-file "(defun fib (n)
  (if (< n 2)
    n
    (+ (fib (- n 1)) (fib (- n 2)))))

(format t \"~d\" (fib 10))")

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
