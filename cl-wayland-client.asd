;;;; cl-wayland.asd

(asdf:defsystem #:cl-wayland-client
  :description "libwayland bindings for Common Lisp"
  :author "Malcolm Still"
  :license "BSD 3-Clause"
  :depends-on (#:cffi #:closer-mop :xmls)
  :serial t
  :components ((:file "wayland-util")
	       (:file "wayland-client-core")
	       (:file "generate-bindings")
	       (:file "wayland-client-protocol")))
