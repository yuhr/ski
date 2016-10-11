
(import (scheme))

(define ski:trick "srfi")
; used as the library name.

(define ski:dir-dist "chez-srfi")
; means the name of the distribution directory.

(define ski:tricks-required '((rnrs)))
; depended by this package.

(define (ski:bind)
  ; means install. setup some stuff and create symlink in the tricks directory. If
  ; The name of the link will be used as the first name used in import forms, e.g.
  ; (import (symlink-to-dir-name subdir-name libfile-name)) or simply you can
  ; (import (symlink-to-libfile-name)).
  
  (display (format "Downloading ~a ...\n" ski:trick))
  (system (format "cd ~a; git clone https://github.com/arcfide/chez-srfi.git" ski:dir-resort))
  (load (format "~a/chez-srfi/link-dirs.chezscheme.sps" ski:dir-resort))
  
  (display (format "Linking ~a ...\n" ski:trick))
  (system (format "ln -sf ~a/~a ~a/~a" ski:dir-resort ski:dir-dist ski:dir-tricks ski:trick))
  
  (display (format "~a OK\n" ski:trick)))

(define (ski:unbind)
  ; means uninstall. cleanup the package's directory and the associated symlink.
  
  (display "phew\n"))

