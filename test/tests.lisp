;;;; tests.lisp

(in-package #:common-lips)
(in-package :it.bese.fiveam)

(def-suite :common-lips
           :description "Tests how Common Lips converts and runs code.")
(in-suite :common-lips)

(load "test/helper")

(test convert-lips
      "Converts Lips code to Lisp."
      (is (string= lisp-file
                   (common-lips:convert lips-file))))

(test convert-lisp
      "Converts Lisp code to Lips."
      (is (string= lips-file
                   (common-lips:convert lisp-file))))

(test run-lips
      "Runs Lips code."
      (is (= 4
             (common-lips:run ")+ 2 2("))))

(run!)
