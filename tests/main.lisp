;; Copyright (c) 2024 John Newton
;; SPDX-License-Identifier: Apache-2.0

(in-package #:lack/middleware/extra/tests)

(defun app (env)
  `(200
    (:content-type "text/plain"
     :content-length 13
     :x-lack-extra ,(getf env :lack.extra))
    ("Hello, World.")))

(deftest middleware
  (testing "Adds an empty hash-table to the Lack environment, under key LACK.EXTRA"
           (let* ((app (funcall lack/middleware/extra:*lack-middleware-extra*
                                #'app))
                  (response (funcall app ()))
                  (headers (second response)))
             (ok (hash-table-p (getf headers :x-lack-extra)))
             (ok (zerop (hash-table-count (getf headers :x-lack-extra)))))))
