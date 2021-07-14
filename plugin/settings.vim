""Keymaps
autocmd FileType c,cpp nnoremap<C-c><buffer> :!g++ -o  %:r.out % -std=c++11<CR>
autocmd FileType c,cpp inoremap<C-c><buffer> :!g++ -o  %:r.out % -std=c++11<CR>
autocmd FileType c,cpp inoremap<F5> <esc>:w<CR> :!g++ -o  %:r.out % -std=c++11<CR> <bar>:FloatermNew %:r.out<CR>
autocmd FileType c,cpp nnoremap<F5> :!g++ -o  %:r.out % -std=c++11<CR> <bar>:FloatermNew %:r.out<CR>
autocmd FileType python map <buffer> <F5> <esc>:w<CR>:FloatermNew python %:r.py<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:FloatermNew python main.py<CR>

