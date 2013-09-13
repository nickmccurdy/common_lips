
(in-package #:common-lips)
(in-package :it.bese.fiveam)

(def-suite :common-lips
           :description "Tests how Common Lips converts and runs code.")
(in-suite :common-lips)

(test convert-lips
      "Converts Lips code to Lisp."
      (is (string= +lisp-code+
                   (common-lips:convert +lips-code+))))

(test convert-lisp
      "Converts Lisp code to Lips."
      (is (string= +lips-code+
                   (common-lips:convert +lisp-code+))))

(test run-lips
      "Runs Lips code."
      (is (= 4
             (common-lips:run ")+ 2 2("))))

(run!)
