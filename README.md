# ski [WIP]
A package manager for Chez Scheme. Currently supports Linux only. See registered libraries in the [boards](https://github.com/qothr/ski/tree/master/boards) directory.

## How to install
`git clone` and `make install`. Install directory is set to `~/.pki` by default; you can change this by editing `Makefile`.

## To use
Repl `(load "~/.ski/do.ss")` and `(ski:bind 'registry-name)`. `registry-name` is usually the name of the package or the git repository, for example, to use [chez-srfi](https://github.com/arcfide/chez-srfi), and `(ski:bind 'chez-srfi)`. To make sure of registry name, see [boards](https://github.com/qothr/ski/tree/master/boards).
Once you get `ski:bind`, you can `(import (library-name ...))` e.g. `(import (srfi :13 strings))` everywhere, but you need to `(load "~/.ski/do.ss")` before it.