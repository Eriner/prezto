Debug
=====

Provides a function to debug zsh and prezto.

Functions
---------

  - `trace-prezto` provides a trace of zsh/prezto startup

Notes
-----

The `trace-prezto` command will not alter your current dotfiles.
It will copy your environment to a temporary directory, launch zsh 
within that environment, and output logs. 

This will provide a ztrace.tar.gz archive, which should be attached
to any bug reports if you need help with an issue that you don't understand.

Requires `gdate` and `gsed` on Mac/BSD systems.

Authors
-------

*The authors and maintainers of this module should be contacted via the [issue tracker][1].*

  - [Matt Hamilton](https://github.com/Eriner)

[1]: https://github.com/Eriner/prezto/issues
