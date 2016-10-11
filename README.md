# ski [WIP]
A package manager for Chez Scheme. Currently supports Linux only.

See registered libraries in the [boards](https://github.com/qothr/ski/tree/master/boards) directory.

## How to install
`git clone` and `make install`. The install directory is set to `~/.pki` by default; you can change this by editing `Makefile`.

## To use
Repl `(load "~/.ski/do.ss")` and `(ski:bind 'registry-name)`. registry-name is the filename without extension under the [boards](https://github.com/qothr/ski/tree/master/boards) directory, and is usually the name of the package or the git repository, for example, to install [chez-srfi](https://github.com/arcfide/chez-srfi), `(ski:bind 'chez-srfi)`.

Once you get `ski:bind`, you can `(import (library-name ...))` e.g. `(import (srfi :13 strings))` everywhere, but you need to `(load "~/.ski/do.ss")` before it.

## TODO
- resolve dependencies
- search in registry
- manage different versions of same library
