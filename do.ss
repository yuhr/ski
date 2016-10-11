
(import (scheme))

(define ski:dir-resort "~/.ski/resort")
(define ski:dir-tricks "~/.ski/tricks")
(define ski:dir-boards "~/.ski/boards")

(library-directories `(,@(library-directories)
                       (,ski:dir-tricks . ,ski:dir-tricks)))
(source-directories `(,@(source-directories)
                      ,ski:dir-tricks))

(define (ski:bind board)
  (let ((s (if (symbol? board)
               (symbol->string board)
               board)))
    (system (format "cd ~a; wget https://github.com/qothr/ski/raw/master/boards/~a.ss"
                    ski:dir-boards s))
    (load (format "~a/~a.ss" ski:dir-boards s))
    (ski:install)))

(define (ski:unbind board)
  (let ((s (if (symbol? board)
               (symbol->string board)
               board)))
    (load (format "~a/~a.ss" ski:dir-boards s))
    (ski:uninstall)
    (system (format "rm ~a/~a.ss" ski:dir-boards s))))

