" settings section
let mapleader = " "
let localmapleader = " "

set number
set relativenumber
set expandtab
set nohlsearch

let g:netrw_browse_split = 0
let g:netrw_banner = 0
let g:netrw_winsize = 25

" keymaps section
nnoremap <leader>pv :Ex<CR>

" colorscheme section
" colorscheme desert
colorscheme gruvbox

set t_Co=256
set background=dark

let g:gruvbox_contrast = "hard"

highlight Comment cterm=italic
highlight String cterm=italic
highlight Keyword cterm=bold

" indentation section
function! SetIndentation()
    if &filetype == "python" || &filetype == "c" ||  &filetype == "cpp" || &filetype == "asm" || &filetype == "sh"
    setlocal tabstop=4 shiftwidth=4 softtabstop=4
    elseif &filetype == "javascript" || &filetype == "html" || &filetype == "css" || &filetype == "lua"
    setlocal tabstop=2 shiftwidth=2 softtabstop=2
    else
    setlocal tabstop=4 shiftwidth=4 softtabstop=4
    endif
    endfunction

    augroup SetIndentationGroup
    autocmd!
autocmd BufReadPost,BufNewFile * call SetIndentation()
    augroup END
