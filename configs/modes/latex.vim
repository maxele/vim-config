" Meta
"" last file
nnoremap \ml :e ~/Documents/latex/test.tex<CR>
"" save and source
nnoremap \ms :wa<CR>:source ~/.vim/configs/modes/latex.vim<CR>
"" edit current mode
nnoremap \me :e ~/.vim/configs/modes/latex.vim<CR>

" find fill and replace
inoremap \f <ESC>/<FILL><CR>ca>

" Compilation
"" Compile on tex change
nnoremap \cm :term<CR>echo *.tex \| entr latexmk -outdir=./out -pdf<CR><C-\><C-n>
"" Update mupdf on pdf change
nnoremap \cv :term<CR>echo out/*.pdf \| entr pkill --signal SIGHUP mupdf<CR>
"" Single shot compilation
nnoremap \cM :term latexmk -outdir=./out -pdf<CR>
"" Open mupdf
nnoremap \cV :!mupdf ./out/*.pdf &<CR><CR>
"" Update mupdf
nnoremap \cU :!pkill --signal SIGHUP mupdf<CR><CR>
"" Remove out directory
nnoremap \cC :!rm -r ./out<CR>
"" Compile and update Mupdf when pdf changes
nnoremap \ca :tabnew<CR>:term<CR>echo *.tex \| entr latexmk -outdir=./out -pdf<CR><C-\><C-n>:term<CR>echo out/*.pdf \| entr pkill --signal SIGHUP mupdf<CR><C-\><C-n>:tabprevious<CR>

" Template
"" Document
inoremap \td \documentclass{article}<CR><CR>\title{<FILL>}<CR>\author{<FILL>}<CR><CR>\begin{document}<CR><CR>\maketitle<CR><CR><FILL><CR><CR>\end{document}
