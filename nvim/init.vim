let g:nvim_config_root = stdpath('config')
let g:config_file_list = [
    \ 'plugins.vim',
    \ 'colors.vim',
    \ 'mappings.vim',
    \ 'private/variables.vim',
    \ ]

for f in g:config_file_list
    execute 'source ' . g:nvim_config_root . '/' . f
endfor

lua require('init')

" Show diagnostic popup on cursor hover
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })

" Set completeopt to have a better completion experience 
" :help completeopt
" menuone: popup even when there's only one match 
" noinsert: Do not insert text until a selection is made 
" noselect: Do not select, force user to select one from the menu 
set completeopt=menuone,noinsert,noselect

" Avoid showing extra messages when using completion
set shortmess+=c
" have a fixed column for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
set signcolumn=yes

" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300

set relativenumber
set number

language en_US
