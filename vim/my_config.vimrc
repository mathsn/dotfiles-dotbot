set nocompatible
set history=100
set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
filetype indent on
filetype on
set smartindent
set backspace=indent,eol,start
"set hlsearch
" set nohls " hlsearch if want highlighting
set showcmd		" display incomplete commands
syntax on
set winminheight=0
set incsearch
set magic
set nobackup
set nowritebackup
set noswapfile
" imap <C-'> <C-]>pi
map <F12> <C-W>_
map <F11> 25<C-W>_
 set matchpairs+=<:>
" map <C-k> :tabnext<CR>
vmap  / y/<C-R>=substitute(escape(@", '\\/.*$^~[]'), "\n", "\\\\n", "g")<CR><CR>
set wildmenu
"map ,/ :s/^/\/\//<CR> <Esc>:noh<CR>
"map ./ :s/^\/\///<CR> <Esc>:noh<CR>
"map ,# :s/^/#/<CR> <Esc>:noh<CR>
"map .# :s/^#//<CR> <Esc>:noh<CR>
" map <C-J> <C-W>x<C-W><Down>
" map <Leader># <c-[>'<^r<CR>i/*<c-[>'>$i*/<c-[>
set tabstop=4
set shiftwidth=4
set expandtab
" autocmd BufRead *.as set filetype=java
" autocmd BufRead *.tt set filetype=php
" autocmd BufRead *.pp set filetype=ruby
" set dir=~/.vim/swp
"set t_Co=256
"let g:solarized_termcolors=256
"colors clarity
"set background=dark
    "colorscheme oceanblack 
    "colors darkblue
    "colorscheme mustang 
    "colorscheme symfony 
    "colorscheme clouds-midnight 
    "colorscheme wombat256  
"set ttyfast
"set fileencodings=utf-8
"set encoding=utf-8 
"set enc=utf-8
"set fencs=utf-8
" show matching brackets
autocmd FileType perl set showmatch

" check perl code with :make
"autocmd FileType perl set makeprg=perl\ -Ilib\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite
autocmd FileType perl set expandtab
autocmd FileType perl set equalprg=perltidy
autocmd FileType python set equalprg=pythontidy.py
autocmd FileType perl set iskeyword+=:
autocmd FileType javascript set iskeyword-=:
autocmd FileType javascript set equalprg=js_beautify.pl\ -
autocmd FileType make set noexpandtab
let perl_include_pod = 1
autocmd FileType set equalprg&
" syntax color complex things like @{${"foo"}}
" nnoremap ; :
" nnoremap gf :sp<CR>gf
" syntax enable
set smartcase

nmap <tab> v>
nmap <s-tab> v<

imap <c-a> <home>
imap <c-e> <end>

" inoremap <C-@> <C-N>
" inoremap <C-S-@> <C-P>
"
" " MySQL
" let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=tiger:dbname=db_twitter:host=localhost'
" let g:dbext_default_profile_mysql_oii = 'type=MYSQL:user=ning:passwd=4WfJ^rnj:dbname=db_twitter_0212:host=www10.oii.ox.ac.uk'


"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
"function! Tab_Or_Complete()
    "if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        "return "\<C-N>"
    "else
        "return "\<Tab>"
    "endif
"endfunction
"inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
"set dictionary="/usr/dict/words"

map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

"execute pathogen#infect()
"filetype off
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
filetype plugin indent on
nnoremap <leader>u :GundoToggle<CR>
