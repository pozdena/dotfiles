packadd minpac
call minpac#init()
call minpac#add('itchyny/lightline.vim')
call minpac#add('w0rp/ale')
call minpac#add('leafgarland/typescript-vim')
call minpac#add('peitalin/vim-jsx-typescript')

"------------------
" Syntax and indent
"------------------
syntax on " turn on syntax highlighting
set showmatch " show matching braces when text indicator is over them

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

" Enable italicised comments. Must appear after anything else theme related (like colorscheme).
highlight Comment cterm=italic

" set filetypes as typescript.jsx
autocmd BufNewFile,BufRead *.ts,*.js set filetype=typescript.jsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.jsx

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
