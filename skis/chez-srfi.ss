
(import (scheme))

(define ski:trick "srfi")
; used as the library name.

(define ski:dist "chez-srfi")
; means the name of the distribution directory.

(define (ski:install)
  ; setup some stuff and create symlink in the tricks directory.
  ; The name of the link will be used as the first name used in import forms, e.g.
  ; (import (symlink-to-dir-name subdir-name libfile-name)) or simply you can
  ; (import (symlink-to-libfile-name)).
  
  (display (format "Downloading ~a ...\n" ski:dist))
  (system (format "cd ~a; git clone https://github.com/arcfide/~a.git" ski:dir-resort ski:dist))
  
  (current-directory (format "~a/~a" ski:dir-resort ski:dist))
  (load (format "~a/~a/link-dirs.chezscheme.sps" ski:dir-resort ski:dist))
  
  (display (format "Linking ~a\n" ski:dist))
  (system (format "ln -sf ~a/~a ~a/~a" ski:dir-resort ski:dist ski:dir-tricks ski:dist))
  
  (display (format "~a OK\n" ski:dist)))

(define (ski:uninstall)
  ; cleanup the package's directory and the associated symlink.

  (display (format "Uninking ~a\n" ski:dist))
  (system (format "unlink ~a/~a" ski:dir-tricks ski:trick))
  
  (display (format "Deleting ~a\n" ski:dist))
  (system (format "rm -rf ~a/~a" ski:dir-resort ski:dist))
  
  (display (format "~a GONE" ski:dist)))

