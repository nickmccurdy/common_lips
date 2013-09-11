;;;; common-lips.asd

(asdf:defsystem #:common-lips
                :serial t
                :description "A more confusing version of Common Lisp."
                :version "0.0.1"
                :author "Nicolas McCurdy <thenickperson@gmail.com>"
                :license "MIT"
                :depends-on (#:fiveam)
                :pathname "src/"
                :components
                ((:file "package")
                 (:file "common-lips")))

(asdf:defsystem #:common-lips-test
                :serial t
                :depends-on (#:common-lips)
                :pathname "test/"
                :components
                ((:file "test-helper")
                 (:file "test-common-lips")))
