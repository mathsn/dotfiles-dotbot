# rust.vim

## DEPRECATED

This work has been replaced by an official plugin: [rust-lang/rust.vim](https://github.com/rust-lang/rust.vim)

Historically this existed as a useful plugin for working with Rust and keeping
up with nightly build changes pre-1.0. Now that the language as relatively
stabilized since v1.0 there's less need for this plugin, especially considering
there's an official version now.

## Description

This is a vim plugin provides [Rust][r] file detection and syntax highlighting.

It is synchronized daily to the vim support code in [rust-lang/rust][rr]'s
master branch via cronjob.

## Installation

### Using [Vundle][v]

1. Add `Plugin 'wting/rust.vim'` to `~/.vimrc`
2. `vim +PluginInstall +qall`

*Note:* Vundle will not automatically detect Rust files properly if `filetype
on` is executed before Vundle. Please check the [quickstart][vqs] for more
details.

### Using [Pathogen][p]

1. `cd ~/.vim/bundle`
2. `git clone https://github.com/wting/rust.vim.git`

[rr]: https://github.com/rust-lang/rust
[p]: https://github.com/tpope/vim-pathogen
[r]: https://en.wikipedia.org/wiki/Rust_language
[v]: https://github.com/gmarik/vundle
[vqs]: https://github.com/gmarik/vundle#quick-start
