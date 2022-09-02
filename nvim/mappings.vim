nnoremap <silent> <cr> :noh<CR>
nnoremap <silent> <c-s> :w<CR>

nnoremap <silent> <c-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <silent> <c-a> <cmd>lua require("harpoon.mark").add_file()<cr>
nnoremap <silent> <c-q> <cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>
nnoremap <silent> <c-n> <cmd>lua require("harpoon.ui").nav_next()<cr>
