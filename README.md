# ski [WIP]
A package manager for Chez Scheme. Currently supports Linux only.

See registered libraries in the [skis](https://github.com/qothr/ski/tree/master/skies) directory.

## Install ski
Download [ski.ss](https://github.com/qothr/ski/raw/master/ski.ss) and load it on repl. If you want to change the install directory, edit it before loading.

## Install Packages
Repl `(load "~/.ski/do.ss")` and `(ski:bind 'registry-name)`. registry-name is the filename without extension under the [skis](https://github.com/qothr/ski/tree/master/skies) directory, and is usually the name of the package or the git repository, for example, to install [chez-srfi](https://github.com/arcfide/chez-srfi), `(ski:bind 'chez-srfi)`.

Once you get `ski:bind`, you can `(import (library-name ...))` e.g. `(import (srfi :13 strings))` everywhere, but you need to `(load "~/.ski/do.ss")` before it.

## TODO
- resolve dependencies
- search in registry
- manage different versions of same library
- update library
