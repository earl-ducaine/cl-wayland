;;;; cl-wayland.asd

(asdf:defsystem #:cl-wayland-generate-bindings
  :description "generate libwayland bindings for Common Lisp"
  :author "Malcolm Still"
  :license "BSD 3-Clause"
  :depends-on (#:cffi #:closer-mop)
  :serial t
  :components ((:file "wayland-util")
	       (:file "wayland-client-core")
	       (:file "generate-bindings")
               (:file "run-generate-bindings")))

