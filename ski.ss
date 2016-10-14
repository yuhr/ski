
(import (scheme))

(define ski:install-directory "~/.ski/")
(define ski:package-directory (string-append ski:install-directory "resort/"))
(define ski:registory-directory (string-append ski:install-directory "skis/"))
(define ski:link-directory (string-append ski:install-directory "tricks/"))

(unless (file-exists? ski:install-directory)
  (mkdir ski:install-directory))
(unless (file-exists? ski:package-directory)
  (mkdir ski:package-directory))
(unless (file-exists? ski:registory-directory)
  (mkdir ski:registory-directory))
(unless (file-exists? ski:link-directory)
  (mkdir ski:link-directory))

(current-directory ski:install-directory)
(system "wget https://github.com/qothr/ski/raw/master/do.ss")
(load "do.ss")

(display "ski OK\n")
