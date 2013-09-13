(defsystem #:common-lips
           :serial t
           :description "A more confusing version of Common Lisp."
           :version "0.0.1"
           :author "Nicolas McCurdy <thenickperson@gmail.com>"
           :license "MIT"
           :depends-on (#:fiveam)
           :pathname "src/"
           :components
           ((:file "package")
            (:file "common-lips" :depends-on ("package"))))

(defsystem #:common-lips-test
           :serial t
           :description "The test suite for Common Lips."
           :depends-on (#:common-lips)
           :pathname "test/"
           :components
           ((:file "helper")
            (:file "tests" :depends-on ("helper"))))
