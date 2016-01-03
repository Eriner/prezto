Prezto — Instantly Awesome Zsh
==============================

This is a fork of the [original semi-abandoned Prezto][9] maintained by Sorin Ionescu.

NOTICE
======

I will no longer be making contributions to this fork. Instead, I have created my own configuration framework; [Zim](https://github.com/Eriner/zim). 
I suggest anyone using my fork of prezto take a look at [Zim](https://github.com/Eriner/zim). 

I created this fork with the intent to maintain prezto in Sorin's absence. 
After spending many, many hours with the codebase, I decided the best thing to do was to create a new project with the same goal, but done better.

[Zim](https://github.com/Eriner/zim) is the product of this, and takes much inspiration from oh-my-zsh and prezto.
One of the main goals was to improve the speed even more, [which I've done](https://github.com/Eriner/zim/wiki/Speed).




Installation
------------

Prezto will work with any recent release of Zsh, but the minimum required
version is 4.3.17.

  1. Launch Zsh:

        zsh

  2. Clone the repository:

        git clone --recursive https://github.com/Eriner/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

  3. Create a new Zsh configuration by copying the Zsh configuration files
     provided:

        setopt EXTENDED_GLOB
        for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
          ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
        done

    NB: The above will not overwrite or update any existing `.zshrc`. Therefore, if you
    have an existing `.zshrc` you must manually add the lines: 

		if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
		source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
		fi

  4. Set Zsh as your default shell:

        chsh -s /bin/zsh

  5. Open a new Zsh terminal window or tab.

### Troubleshooting

If you are not able to find certain commands after switching to *Prezto*,
modify the `PATH` variable in *~/.zprofile* then open a new Zsh terminal
window or tab.

Updating
--------

Pull the latest changes and update submodules.

    git pull && git submodule update --init --recursive

Usage
-----

Prezto has many features disabled by default. Read the source code and
accompanying README files to learn what features are available.

### Modules

  1. Browse [.zprezto/modules][10] to see what is available.
  2. Load the modules you need in *~/.zpreztorc* then open a new Zsh terminal
     window or tab.

### Themes

  1. For a list of themes, type `prompt -l`.
  2. To preview a theme, type `prompt -p name`.
  3. Load the theme you like in *~/.zpreztorc* then open a new Zsh terminal
     window or tab.

     ![sorin theme][2]

Customization
-------------

The project is managed via [Git][3]. It is highly recommended that you fork this
project; you can commit your changes and push them to [GitHub][4] to not lose them.
If you do not know how to use Git, follow this [tutorial][5] and bookmark this [reference][6].

Resources
---------

The [Zsh Reference Card][7] and the [zsh-lovers][8] man page are indispensable.

License
-------

(The MIT License)

Copyright (c) 2009-2011 Robby Russell and contributors.

Copyright (c) 2011-2015 Sorin Ionescu and contributors.

Copyright (c) 2015 Matt Hamilton and contributors.

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[1]: http://www.zsh.org
[2]: http://i.imgur.com/nrGV6pg.png "sorin theme"
[3]: http://git-scm.com
[4]: https://github.com
[5]: http://gitimmersion.com
[6]: http://gitref.org
[7]: http://www.bash2zsh.com/zsh_refcard/refcard.pdf
[8]: http://grml.org/zsh/zsh-lovers.html
[9]: https://github.com/sorin-ionescu/prezto
[10]: https://github.com/Eriner/prezto/tree/master/modules
