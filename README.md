This POC is an attempt to test various languages for scripting

## Problem statement

Rename only HTML files (*.html) in the script's parent directory.

## Parameters

I am trying to emulate the environment of a shell script.

- Single-file script. That means dependencies, if any, should be inline. They should not need out-of-file set-up. Otherwise, make do with the language's stdlib.

## Analysis

Scala uses non-stdlib dependency `os-path`, but only because Scala CLI makes it seamless to keep the script within the Parameters described above – mainly, a single-file script which can declare dependencies inline.

- Scala is the most concise
- Lisps (Common Lisp) is the most verbose.
- OCaml sits in-between.
- Both Lisp and OCaml would have been more concise if non-stdlib deps were used. But that would involve a lot more tools and files – asdf, quicklisp, opam, dune, *.opam, dune file. Scala 3.5 needs only Scala itself.
