
(import (scheme))

(define ski:trick "srfi")
; used as the library name.

(define ski:dist "chez-srfi")
; means the name of the distribution directory.

;;; dont rename symbols defined below =============================================================

(define (ski:install)
  ; setup some stuff and create symlink in the tricks directory.
  ; The name of the link will be used as the first name used in import forms, e.g.
  ; (import (symlink-to-dir-name subdir-name libfile-name)) or simply you can
  ; (import (symlink-to-libfile-name)).
  
  (display (format "Downloading ~a ...\n" ski:trick))
  (system (format "cd ~a; git clone https://github.com/arcfide/chez-srfi.git" ski:dir-resort))
  
  (current-directory (format "~a/chez-srfi" ski:dir-resort))
  (load (format "~a/chez-srfi/link-dirs.chezscheme.sps" ski:dir-resort))
  
  (display (format "Linking ~a\n" ski:dist))
  (system (format "ln -sf ~a/~a ~a/~a" ski:dir-resort ski:dist ski:dir-tricks ski:trick))
  
  (display (format "(~a) OK\n" ski:trick)))

(define (ski:uninstall)
  ; cleanup the package's directory and the associated symlink.

  (display (format "Uninking ~a\n" ski:trick))
  (system (format "unlink ~a/~a" ski:dir-tricks ski:trick))
  
  (display (format "Deleting ~a\n" ski:dist))
  (system (format "rm -rf ~a/~a" ski:dir-resort ski:dist))
  
  (display (format "~a GONE" ski:trick)))

