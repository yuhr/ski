
(import (scheme))

(define ski:dir-resort "~/.ski/resort")
(define ski:dir-tricks "~/.ski/tricks")
(define ski:dir-skies "~/.ski/skies")

(library-directories `(,@(library-directories)
                       (,ski:dir-tricks . ,ski:dir-tricks)))
(source-directories `(,@(source-directories)
                      ,ski:dir-tricks))

(define (ski:bind ski)
  (let ((s (if (symbol? ski)
               (symbol->string ski)
               ski)))
    (system (format "cd ~a; wget https://github.com/qothr/ski/raw/master/skies/~a.ss"
                    ski:dir-skies s))
    (load (format "~a/~a.ss" ski:dir-skies s))
    (ski:install)))

(define (ski:unbind ski)
  (let ((s (if (symbol? ski)
               (symbol->string ski)
               ski)))
    (load (format "~a/~a.ss" ski:dir-ski s))
    (ski:uninstall)
    (system (format "rm ~a/~a.ss" ski:dir-ski s))))
