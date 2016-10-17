
(import (scheme))

(define ski:trick "vulkan")
; used as the library name.

(define ski:dist "chez-vulkan")
; means the name of the distribution directory.

(define (ski:install)
  ; setup some stuff and create symlink in the tricks directory.
  ; The name of the link will be used as the first name used in import forms, e.g.
  ; (import (symlink-to-dir-name subdir-name libfile-name)) or simply you can
  ; (import (symlink-to-libfile-name)).
  
  (display (format "Downloading ~a ...\n" ski:dist))
  (system (format "cd ~a; git clone https://github.com/qothr/~a.git" ski:dir-resort ski:dist))
  
  (display (format "Linking ~a\n" ski:dist))
  (system (format "ln -sf ~a/~a/vulkan.ss ~a/~a.ss" ski:dir-resort ski:dist ski:dir-tricks ski:trick))
  
  (display (format "~a OK\n" ski:dist)))

(define (ski:uninstall)
  ; cleanup the package's directory and the associated symlink.

  (display (format "Uninking ~a\n" ski:dist))
  (system (format "unlink ~a/~a.ss" ski:dir-tricks ski:trick))
  
  (display (format "Deleting ~a\n" ski:dist))
  (system (format "rm -rf ~a/~a" ski:dir-resort ski:dist))
  
  (display (format "~a GONE" ski:dist)))

