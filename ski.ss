
(import (scheme))

(define ski:install-directory "~/.ski/")
(define ski:package-directory (string-append ski:install-directory "resort/"))
(define ski:registry-directory (string-append ski:install-directory "skis/"))
(define ski:link-directory (string-append ski:install-directory "tricks/"))

(unless (file-exists? ski:install-directory)
  (mkdir ski:install-directory))
(unless (file-exists? ski:package-directory)
  (mkdir ski:package-directory))
(unless (file-exists? ski:registry-directory)
  (mkdir ski:registry-directory))
(unless (file-exists? ski:link-directory)
  (mkdir ski:link-directory))

(current-directory ski:install-directory)
(system "wget https://github.com/qothr/ski/raw/master/do.ss")

(load "do.ss")

(display "Ski installed.\n")
(display "Usage:\n")
(display "\t(ski:bind 'registry-name) installs the registry-name package.\n")
(display "\t(ski:unbind 'registry-name) uninstalls the registry-name package.\n")
(display (format "You need (load \"~ado.ss\") to import libraries installed by ski.\n" ski:install-directory))
(display "Have a nice ski.")

