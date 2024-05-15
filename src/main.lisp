;; Copyright (c) 2024 John Newton
;; SPDX-License-Identifier: Apache-2.0

(in-package #:lack/middleware/extra)

(defparameter *lack-middleware-extra*
  #'(lambda (app)
      (declare (type function app))
      #'(lambda (env)
          (declare (optimize (speed 3) (safety 0) (debug 0))
                   (type list env))
          (setf (getf env :lack.extra)
                (make-hash-table :test #'eq))
          (funcall app env)))
  "Middleware function to insert a hash-table in the environment under key LACK.EXTRA")
