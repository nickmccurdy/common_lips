;;;; common_lips.asd

(asdf:defsystem #:common_lips
  :serial t
  :description "A more confusing version of Common Lisp."
  :version "0.0.1"
  :author "Nicolas McCurdy <thenickperson@gmail.com>"
  :license "MIT"
  :depends-on (#:fiveam)
  :components
  ((:module src
            :serial t
            :components
            ((:file "package")
             (:file "common_lips")))
   (:module test
            :serial t
            :components
            ((:file "test_helper")
             (:file "test_common_lips")))))

