""Keymaps
autocmd FileType c,cpp nnoremap<C-c> :!g++ -o  %:r.out % -std=c++11<CR>
autocmd FileType c,cpp inoremap<C-c> <esc>:w<CR> :!g++ -o  %:r.out % -std=c++11<CR>
autocmd FileType c,cpp inoremap<F5> <esc>:w<CR> :!g++ -o  %:r.out % -std=c++11<CR> <bar>:FloatermNew %:r.out<CR>
autocmd FileType c,cpp nnoremap<F5> :!g++ -o  %:r.out % -std=c++11<CR> <bar>:FloatermNew %:r.out<CR>

autocmd FileType python nnoremap <buffer> <F5> <esc>:w<CR>:FloatermNew python %:r.py<CR>
autocmd FileType python inoremap <buffer> <F5> <esc>:w<CR>:FloatermNew python %:r.py<CR>

autocmd FileType javascript nnoremap <F5> :FloatermNew node %:r.js<CR>
autocmd FileType javascript inoremap <F5> <esc> :w <CR> :FloatermNew node %:r.js<CR>
""TODO ADD replt support for python and javascript https://github.com/voldikss/vim-floaterm#python

