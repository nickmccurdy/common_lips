;;;; test_common_lips.lisp

(in-package #:common_lips)
(in-package :it.bese.fiveam)

(def-suite :common_lips
           :description "Tests how Common Lips converts and runs code.")
(in-suite :common_lips)

(load "test/test_helper")

(test convert-lips
      "Converts Lips code to Lisp."
      (is (string= lisp-file
                   (common_lips:convert lips-file))))

(test convert-lisp
      "Converts Lisp code to Lips."
      (is (string= lips-file
                   (common_lips:convert lisp-file))))

(test run-lips
      "Runs Lips code."
      (is (= 4
             (common_lips:run ")+ 2 2("))))

(run!)
