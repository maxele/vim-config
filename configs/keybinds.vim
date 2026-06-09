" Escaping from insert/terminal mode
inoremap jk <Esc>
tnoremap jk <C-\><C-n>
" Explorer
nnoremap <space>E :Explore<CR>
nnoremap - :Rexplore<CR>
" Tabs
nnoremap <Tab> :tabnext<CR>
nnoremap <S-Tab> :tabprevious<CR>
nnoremap <M-Tab> :tabnew<CR>
" Buffers
nnoremap <space>bd :bd<CR>
nnoremap <space>bw :wa<CR>
" Modes
nnoremap <space>md :source ~/.vim/configs/modes/default.vim<CR>
nnoremap <space>ml :source ~/.vim/configs/modes/latex.vim<CR>
" Projects
nnoremap <space>pl :e ~/.vim/projects.txt<CR>
nnoremap <space>pF gf:cd %:h<CR>:Explore<CR>
nnoremap <space>pf gf:cd %:h<CR>
