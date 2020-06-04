" Sample .vimrc file by Martin Brochhaus
" Presented at PyCon APAC 2012

" ============================================
" Note to myself:
" DO NOT USE <C-z> FOR SAVING WHEN PRESENTING!
" ============================================

set relativenumber
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.

set clipboard=unnamed
set pastetoggle=<F2>

" Mouse and backspace
set mouse=a  " on OSX press ALT and click
"" set bs=2     " make backspace behave like normal again


" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ' '


" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
"noremap <C-n> :nohl<CR>
"vnoremap <C-n> :nohl<CR>
"inoremap <C-n> :nohl<CR>


" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>


" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows


" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
"map <c-j> <c-w>j
"map <c-k> <c-w>k
"map <c-l> <c-w>l
"map <c-h> <c-w>h


" easier moving between tabs
"ap <Leader>n <esc>:tabprevious<CR>
"map <Leader>m <esc>:tabnext<CR>


" map sort function to a key
vnoremap <Leader>s :sort<CR>


" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation


" Show whitespace
" MUST be inserted BEFORE the colorscheme command
""autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
""au InsertLeave * match ExtraWhitespace /\s\+$/


" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
"set t_Co=256
"color wombat256mod


" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on


" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
"set colorcolumn=80
"highlight ColorColumn ctermbg=233


" easier formatting of paragraphs
" Nice
vmap Q gq
nmap Q gqap


" Useful settings
set history=700
set undolevels=700


" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase


" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile


" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
"call pathogen#infect()


" ============================================================================
" Python IDE Setup
" ============================================================================


" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
set laststatus=2


" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*


" Settings for python-mode
" Note: I'm no longer using this. Leave this commented out
" and uncomment the part about jedi-vim instead
" cd ~/.vim/bundle
" git clone https://github.com/klen/python-mode
"map <Leader>g :call RopeGotoDefinition()<CR>
"let ropevim_enable_shortcuts = 1
"let g:pymode_rope_goto_def_newwin = "vnew"
"let g:pymode_rope_extended_complete = 1
"let g:pymode_breakpoint = 0
"let g:pymode_syntax = 1
"import ipdb; ipdb.set_trace
"let g:pymode_syntax_builtin_objs = 0
"let g:pymode_syntax_builtin_funcs = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

"let g:jedi#force_py_version = 2

" Settings for jedi-vim
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
"let g:jedi#usages_command = "<leader>z"
" let g:jedi#popup_on_dot = 0,
"let g:jedi#popup_select_first = 0
"map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Better navigating through omnicomplete option list
" See http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><Leader>j <C-R>=OmniPopup('j')<CR>
inoremap <silent><Leader>k <C-R>=OmniPopup('k')<CR>


" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
"set nofoldenable


"My useful settings
"Nice

set nocompatible
set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
filetype indent on
" filetype plugin on
set smartindent
set backspace=indent,eol,start
"set hlsearch
set nohls " hlsearch if want highlighting
set showcmd		" display incomplete commands
set winminheight=0
set incsearch
set magic
set nobackup
set nowritebackup
set noswapfile
" imap <C-'> <C-]>pi
"map <F12> <C-W>_
"map <F11> 25<C-W>_
set matchpairs+=<:>
"map <C-k> :tabnext<CR>
vmap  / y/<C-R>=substitute(escape(@", '\\/.*$^~[]'), "\n", "\\\\n", "g")<CR><CR>
set wildmenu
"map ,/ :s/^/\/\//<CR> <Esc>:noh<CR>
"map ./ :s/^\/\///<CR> <Esc>:noh<CR>
"map ,# :s/^/#/<CR> <Esc>:noh<CR>
"map .# :s/^#//<CR> <Esc>:noh<CR>
"map <C-J> <C-W>x<C-W><Down>
"map <Leader>x <c-[>'<^r<CR>i/*<c-[>'>$i*/<c-[>
set tabstop=4
set shiftwidth=4
set expandtab
"autocmd BufRead *.as set filetype=java
"autocmd BufRead *.tt set filetype=php
"autocmd BufRead *.pp set filetype=ruby
"set dir=~/.vim/swp
"set t_Co=256
"let g:solarized_termcolors=256
"colors clarity
" colors darkblue
"set background=dark
"colorscheme oceanblack 
"colors darkblue
"colorscheme wombat256  
"set ttyfast
"set fileencodings=utf-8
"set encoding=utf-8 
"set enc=utf-8
"set fencs=utf-8
" show matching brackets
"autocmd FileType perl set showmatch

" check perl code with :make
"autocmd FileType perl set makeprg=perl\ -Ilib\ -c\ %\ $*
"autocmd FileType perl set errorformat=%f:%l:%m
"autocmd FileType perl set autowrite
"autocmd FileType perl set expandtab
"autocmd FileType perl set equalprg=perltidy
"autocmd FileType python set equalprg=pythontidy.py
"autocmd FileType perl set iskeyword+=:
"autocmd FileType javascript set iskeyword-=:
"autocmd FileType javascript set equalprg=js_beautify.pl\ -
"autocmd FileType make set noexpandtab
"let perl_include_pod = 1
"autocmd FileType set equalprg&
" syntax color complex things like @{${"foo"}}
nnoremap ; :
nnoremap gf :sp<CR>gf
syntax enable
"set smartcase

nmap <tab> v>
nmap <c-tab> v<

nmap <c-a> <home>
nmap <c-e> <end>

"inoremap <C-@> <C-N>
"inoremap <C-S-@> <C-P>

nmap <C-/> <Leader>cc 

let custom_configs_1 = "~/.vim/my_config.vimrc"
if filereadable(expand(custom_configs_1))
  execute "source " . custom_configs_1
endif

let custom_configs_2 = "~/.vim/complex_config.vimrc"
if filereadable(expand(custom_configs_2))
  execute "source " . custom_configs_2
endif

