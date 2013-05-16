# mix.vim

Plugin for using Elixir's build tool, `mix`.

## Installation

I recommend installing [pathogen.vim][pathogen], then running the following:

    cd ~/.vim/bundle
    git clone git://github.com/mattonrails/vim-mix.git

## Usage

- `:Mix` runs the default mix task (the "run" task, unless otherwise
  configured).
- `:Mclean` cleans generated application files
- `:Mcompile` compiles sources files

## Planned commands

- `:Mixfile` opens the project Mixfile.
- `:Mdeps` lists project dependencies and their status
- `:Mdeps clean` removes dependency files
- `:Mdeps compile` compiles dependencies
- `:Mdeps get` gets all out of date dependencies
- `:Mdeps unlock` unlocks the given dependencies
- `:Mdeps update` updates project dependencies
- `:Mdo` executes the commands separated by comma
- `:Mescript` generates an escript and replaces the current buffer
- `:Mrebar` installs rebar locally
- `:Mrun` runs the given expression
- `:Mtest` runs the project's tests

## License

Copyright © Matthew Conway. Distributed under the same terms as Vim itself.
See `:help license`.
