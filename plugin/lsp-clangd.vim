" based on https://github.com/prabirshrestha/vim-lsp/wiki/Servers-Go
if executable('gopls')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'gopls',
                \ 'cmd': {server_info->['gopls']},
                \ 'whitelist': ['go'],
                \ })
    autocmd BufWritePre *.go LspDocumentFormatSync
else
    let ex = exists("g:lsp_gopls_ignore_warning")
    if !ex || (ex && !g:lsp_gopls_ignore_warning)
        echo "Cannot find gpls"
        echo "Use 'let g:lsp_gopls_ignore_warning = 1' if you do not want to see this warning"
    endif
endif
