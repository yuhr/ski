
(import (scheme))

(define ski:dir-resort "~/.ski/resort")
(define ski:dir-tricks "~/.ski/tricks")
(define ski:dir-boards "~/.ski/boards")

(library-directories `(,@(library-directories)
                       (,ski:dir-tricks . ,ski:dir-tricks)))
(source-directories `(,@(source-directories)
                      ,ski:dir-tricks))

