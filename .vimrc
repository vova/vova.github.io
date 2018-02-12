set nocompatible
syntax enable
filetype plugin on
set path+=**
set wildmenu
set nonu " Hide line numbers, set nu to show
set ignorecase
set smartcase
set encoding=utf8
autocmd BufWritePre * :%s/\s\+$//e  "removes trail spaces
cmap w!! %!sudo tee > /dev/null %
map <Leader>z :browse oldfiles<CR>
map <Leader>ee :e!%<CR>
map <Leader>i mmgg=G`m<CR>
map <Leader>l :!echo<CR>
" Keyboard Layout
map<Leader>0 :set keymap=<CR>
map<Leader>1 :set keymap=russian-jcukenwin<CR>
map<Leader>2 :set keymap=ukrainian-jcuken<CR>

" Rails specific
command! MakeTags !ripper-tags -R --exclude=.git --exclude=vendor .
command! MakeGemTags !gem ripper_tags
map <Leader>A :e config/application.rb<CR>
map <Leader>R :e config/routes.rb<CR>
map <Leader>S :e db/schema.rb<CR>
map <Leader>G :e Gemfile<CR>

set sw=2 "Replace tab with 2 spaces
set sts=2 "Same in case of autoindent
let g:fuzzy_ignore = "gems/*r"

"convert rocket hash style to 1.9 hash
nmap <Leader>h :s/\:\([a-zA-Z_]*\)\s=>/\1\:/g<CR>
vmap <Leader>h :‘<,‘>s/\:\([a-zA-Z_]*\)\s=>/\1\:/g<CR>

map <Leader>jf :%!python -m json.tool<CR>
map <Leader>V :e ~/.vimrc<CR>
nmap gV `[v`]
map <Leader>sr :set relativenumber<CR>
map <Leader>sn :set number<CR>
map <Leader>snn :set nonumber<CR>
map <Leader>snr :set norelativenumber<CR>

let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
"let g:netrw_list_hide=netrw_gitignore#Hide()
"let g:netrw_list_hide.=‘,\(^\|\s\s\)\zs\.\S\+’
let g:netrw_preview   = 1
let g:netrw_liststyle = 3
let g:netrw_winsize   = 30
map <Leader>p :Explore<CR>
