syntax enable
colorscheme molokai

" ctrl + s mapping for saving 
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

" show line numbers by default
set number

" edit tab settings
set tabstop=3 		" The width of a tab is set to 3
set shiftwidth=3 	" Indents will have a width of 3
set softtabstop=3	" Sets the number of columns for a tab
set noexpandtab

