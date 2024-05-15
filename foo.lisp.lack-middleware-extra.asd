;; Copyright (c) 2024 John Newton
;; SPDX-License-Identifier: Apache-2.0

(defsystem "foo.lisp.lack-middleware-extra"
  :version "0.0.1"
  :author "John Newton"
  :license "Apache-2.0"
  :homepage "https://github.com/lisplizards/lack-middleware-extra"
  :bug-tracker "https://github.com/lisplizards/lack-middleware-extra/issues"
  :source-control (:git "https://github.com/lisplizards/lack-middleware-extra.git")
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main" :depends-on ("package"))
                 (:file "package"))))
  :description ""
  :in-order-to ((test-op (test-op "foo.lisp.lack-middleware-extra/tests"))))

(defsystem "foo.lisp.lack-middleware-extra/tests"
  :author "John Newton"
  :license "Apache-2.0"
  :depends-on ("foo.lisp.lack-middleware-extra"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main" :depends-on ("package"))
                 (:file "package"))))
  :description "Test system for foo.lisp.lack-middleware-extra"
  :perform (test-op (op c) (symbol-call :rove :run c)))
