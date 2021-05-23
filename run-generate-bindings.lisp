;; (generate-bindings nil 'wayland-server "/usr/share/wayland/wayland.xml" :path-to-lib '("libwayland-server"))
;; (generate-bindings nil 'xdg-shell-server "xdg-shell.xml" :dependencies (list :wayland-server-protocol) :generate-interfaces? t)


(in-package :generate-bindings)

(defun generate-libwayland-server-bindings ()
  (generate-bindings nil 'wayland-server "/usr/share/wayland/wayland.xml"
                     :path-to-lib '("libwayland-server")))

(defun generate-libwayland-client-bindings ()
  (generate-bindings t 'wayland-client "/usr/share/wayland/wayland.xml"
                     :path-to-lib '("libwayland-client")))

(defun generate-wayland-server-protocol-bindings ()
  (generate-bindings nil 'xdg-shell-server "xdg-shell.xml"
                     :dependencies (list :wayland-server-protocol)
                     :generate-interfaces? t))

