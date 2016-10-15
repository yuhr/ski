
(import (scheme))

(define ski:dist "chez-gl")
; means the name of the distribution directory.

(define (ski:install)
  ; setup some stuff and create symlink in the tricks directory.
  ; The name of the link will be used as the first name used in import forms, e.g.
  ; (import (symlink-to-dir-name subdir-name libfile-name)) or simply you can
  ; (import (symlink-to-libfile-name)).
  
  (display (format "Downloading ~a ...\n" ski:dist))
  (system (format "cd ~a; git clone https://github.com/dharmatech/~a.git" ski:dir-resort ski:dist))
  
  (display (format "Linking ~a\n" ski:dist))
  (system (format "ln -sf ~a/~a/gl.sls ~a/gl.sls" ski:dir-resort ski:dist ski:dir-tricks))
  (system (format "ln -sf ~a/~a/glu.sls ~a/glu.sls" ski:dir-resort ski:dist ski:dir-tricks))
  (system (format "ln -sf ~a/~a/glut.sls ~a/glut.sls" ski:dir-resort ski:dist ski:dir-tricks))
  
  (display (format "~a OK\n" ski:dist)))

(define (ski:uninstall)
  ; cleanup the package's directory and the associated symlink.

  (display (format "Uninking ~a\n" ski:dist))
  (system (format "unlink ~a/gl.sls" ski:dir-tricks))
  (system (format "unlink ~a/glu.sls" ski:dir-tricks))
  (system (format "unlink ~a/glut.sls" ski:dir-tricks))
  
  (display (format "Deleting ~a\n" ski:dist))
  (system (format "rm -rf ~a/~a" ski:dir-resort ski:dist))
  
  (display (format "~a GONE" ski:dist)))

