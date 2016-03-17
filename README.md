# mix.vim

Plugin for using Elixir's build tool, `mix`.

## Installation

I recommend installing [pathogen.vim][pathogen], then running the following:

    cd ~/.vim/bundle
    git clone git://github.com/mattreduce/vim-mix.git

## Usage

- `:Mix [command]` runs the default mix task (the "run" task, unless otherwise
  configured), or the given command.
- `:Mclean` cleans generated application files
- `:Mcompile` compiles sources files
- `:Mdeps` lists project dependencies and their status
- `:Mdeps clean` removes dependency files
- `:Mdeps compile` compiles dependencies
- `:Mdeps get` gets all out of date dependencies
- `:Mdeps unlock` unlocks all dependencies
- `:Mdeps update` updates project dependencies
- `:Mtest` runs the project's tests

## Planned commands

- `:Mixfile` opens the project Mixfile.
- `:Mdeps unlock <deps>` unlocks _specific_ dependencies
- `:Mdeps update <deps>` updates _specific_ dependencies
- `:Mdo` executes the commands separated by comma
- `:Mescript` generates an escript and replaces the current buffer
- `:Mrun` runs the given expression

## License

Copyright © Matthew Conway. Distributed under the same terms as Vim itself.
See `:help license`.

[pathogen]: https://github.com/tpope/vim-pathogen
