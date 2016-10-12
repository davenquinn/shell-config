# vim-alphamelts-syntax
VIM syntax for AlphaMELTS/adiabat1ph configuration files

Best installed using [Pathogen](https://github.com/tpope/vim-pathogen)
or an equivalent vim plugin manager.

Use `set filetype=melts` to enable.
Or add something like

    autocmd BufNewFile,BufRead *.melts-env setfiletype melts
    autocmd BufNewFile,BufRead *.melts setfiletype melts

to your `.vimrc` file.
