Registers the gopls lsp to vim-lsp, to be used with vim-lsp.
Requires `gopls` installed.

Example usage:
```vim
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
...
Plug 'piec/vim-lsp-gopls'
```

Ignore the warning about `gopls` not found:
```vim
let g:lsp_gopls_ignore_warning = 1
```

