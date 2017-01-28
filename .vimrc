set nocompatible  
runtime macros/matchit.vim
if has("autocmd")
    filetype indent plugin on
endif
filetype off
let mapleader=" "

set t_Co=256
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

 set hidden
 set backspace=indent,eol,start
 set nocompatible
 set nobackup
 set nowritebackup
 set history=50
 set noswapfile
 set mouse=a
 set clipboard=unnamed
 set ruler
 set number
 set shell=zsh
 set numberwidth=5
 set incsearch
 set laststatus=2
 set encoding=utf-8
 set tabstop=2
 set shiftwidth=2
 set expandtab
 set timeoutlen=1000 ttimeoutlen=0
 set list listchars=tab:»·,trail:·

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

 let g:vimclojure#HighlightBuiltins = 1
 let g:vimclojure#ParenRainbow = 1

 """ VIM PLUGGED

 call plug#begin('~/.vim/plugged')

 Plug 'tpope/vim-sensible'
 Plug 'thoughtbot/vim-rspec'
 Plug 'tpope/vim-surround'
 Plug 'tpope/vim-fugitive'
 Plug 'tpope/vim-repeat'
 Plug 'flazz/vim-colorschemes'
 Plug 'junegunn/vim-easy-align'
 Plug 'commonform/vim-commonform'
 Plug 'junegunn/goyo.vim'
 Plug 'tpope/vim-commentary'
 Plug 'pbrisbin/vim-mkdir'
 Plug 'scrooloose/syntastic'
 Plug 'vim-ruby/vim-ruby'
 Plug 'tpope/vim-rails'
 Plug 'elzr/vim-json'
 Plug 'pangloss/vim-javascript'
 Plug 'mxw/vim-jsx'
 Plug 'nathanaelkane/vim-indent-guides'
 Plug 'tpope/vim-endwise'
 Plug 'tpope/vim-bundler'
 Plug 'jgdavey/tslime.vim'
 Plug 'amix/vim-zenroom2'
 Plug 'tpope/vim-leiningen':wq
 Plug 'dkinzer/vim-schemer'
 Plug 'kassio/neoterm'
 Plug 'tpope/vim-surround'
 Plug 'tpope/vim-repeat'
 Plug 'guns/vim-sexp'
 Plug 'tpope/vim-sexp-mappings-for-regular-people'
 Plug 'tomlion/vim-solidity'
 Plug 'ekalinin/Dockerfile.vim'
 Plug 'tpope/vim-projectionist'
 Plug 'tpope/vim-dispatch'
 Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
 Plug 'rkneufeld/vim-boot'
 Plug 'calebsmith/vim-lambdify'
 Plug 'guns/vim-clojure-static'
 Plug 'guns/vim-clojure-highlight'
 Plug 'wlangstroth/vim-racket'
 Plug 'tpope/vim-classpath'
 Plug 'chase/vim-ansible-yaml'
 Plug 'junegunn/rainbow_parentheses.vim' 
 Plug 'altercation/vim-colors-solarized'
 Plug 'bling/vim-airline'
 Plug 'christoomey/vim-run-interactive'
 Plug 'christoomey/vim-tmux-navigator'
 Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
 Plug 'rizzatti/dash.vim'
 Plug 'vimoutliner/vimoutliner'
 Plug 'kien/ctrlp.vim'

 call plug#end()

 END VIM PLUGGED

 autocmd FileType ruby compiler ruby
 " non github repos
 filetype on
 filetype plugin  on     " required!
 filetype indent  on
 syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""  Gary Bernhardt Stuff  """""""""

"""""""""""""""""""""""""""""""
 " MISC KEY MAPS
 """""""""""""""""""""""""""""""
 map <Esc><Esc> :w<CR>
 map <leader>y "*y
 " Move around splits with <c-hjkl>
  nnoremap <c-j> <c-w>j
  nnoremap <c-k> <c-w>k
  nnoremap <c-h> <c-w>
  nnoremap <c-l> <c-w>l
  nnoremap <c-w> <c-w>w

let g:rspec_command = "Dispatch bin/spring rspec {spec}"
 
" Vim Runner Stuff
nnoremap <leader>irb :VtrOpenRunner {'orientation': 'h', 'percentage': 50, 'cmd': 'irb'}<cr>
nnoremap <leader>pry :VtrOpenRunner {'orientation': 'h', 'percentage': 50, 'cmd': 'pry'}<cr>

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>


""""   SUPER RAINBOW



augroup rainbow_lisp
    autocmd!
      autocmd FileType lisp,clojure,scheme,racket RainbowParentheses
    augroup END
augroup END

" Ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_map = '<c-b>'
let g:ctrlp_cmd = 'CtrlPBuffer'

autocmd filetype lisp,scheme,art setlocal equalprg=scmindent.rkt

let g:niji_dark_colours = [
      \  [ '81', '#5fd7ff'],
      \  [ '99', '#875fff'],
      \  [ '1',  '#dc322f'],
      \  [ '76', '#5fd700'],
      \  [ '3',  '#b58900'],
      \  [ '2',  '#859900'],
      \  [ '6',  '#2aa198'],
      \  [ '4',  '#268bd2'],
      \  ]

 map <Leader>r :call RunCurrentSpecFile()<CR>
 map <Leader>n :call RunNearestSpec()<CR>
 map <Leader>l :call RunLastSpec()<CR>
 map <Leader>a :call RunAllSpecs()<CR>

" [q]uit (close) window/split
nnoremap <silent> <Leader>q <C-w>q

" " [s]plit window horizontally
nnoremap <silent> <Leader>s <C-w>s

" " split window [v]ertically
nnoremap <silent> <Leader>\ <C-w>v

"" Airline

let g:airline_powerline_fonts = 1

  " Insert a hash rocket with <c-l>
 " imap <c-l> <space>=><space>
 " " Can't be bothered to understand ESC vs <c-c> in insert mode
  imap <c-c> <esc>
 " " Clear the search buffer when hitting return
  function! MapCR()
    nnoremap <cr> :nohlsearch<cr>
    endfunction
    call MapCR()
   nnoremap <leader><leader> <c-^>

 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " MULTIPURPOSE TAB KEY
 " Indent if we're at the beginning of a line. Else, do completion.
 " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
      return "\<tab>"
    else
       return "\<c-p>"
    endif
   endfunction
 inoremap <tab> <c-r>=InsertTabWrapper()<cr>
 inoremap <s-tab> <c-n>

   
   map <leader>w :only<cr>
   map <leader>f :NERDTreeToggle<cr>
   map <silent> <leader>d <Plug>DashSearch
   nnoremap <silent> <Leader>gs :Gstatus<CR>
   nnoremap <silent> <Leader>gc :Gcommit -v<CR>
                                                                                                       
"  nnoremap  <leader> :call OpenTestAlternate()<cr>
   syntax enable

  colorscheme solarized
  set background=dark

   let g:airline_theme='luna'
