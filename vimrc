" based on http://nvie.com/posts/how-i-boosted-my-vim/

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden " 'Hide' buffers instead of closing them
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set nowritebackup
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set showcmd             " display incomplete commands
set autoindent          " always set autoindenting on
set copyindent          " copy the previous indentation on autoindenting
set number              " always show line numbers
set shiftwidth=4        " number of spaces to use for autoindenting
set shiftround          " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch           " set show matching parenthesis
set ignorecase          " ignore case when searching
set smartcase           " ignore case if search pattern is all lowercase,
                        "    case-sensitive otherwise
set incsearch           " do incremental searching
set smarttab            " insert tabs on the start of a line according to
                        "    shiftwidth, not tabstop
set hlsearch            " highlight search terms
set history=1000        " remember more commands and search history
set undolevels=1000     " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title               " change the terminal's title
set visualbell          " don't beep
set noerrorbells        " don't beep
set laststatus=2  " Always show status line.

" don't bother me with .bak and .swp files
set nobackup
set noswapfile

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled
" in  Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

if &t_Co >= 256 || has("gui_running")
  "colorscheme railscast
endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif

" Show a # at the end of a line
set list
set listchars=extends:#,nbsp:.

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" Force myself to use jklh
map <up> :echo "no!" <cr>
map <down> :echo "no!" <cr>
map <left> :echo "no!" <cr>
map <right> :echo "no!" <cr>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Lets you write a file as root after it is already open
" by using w!!
cmap w!! w !sudo tee % >/dev/null

if has('autocmd')
  " do intelligent indenting based on filetype
  filetype plugin indent on  
  autocmd filetype python set expandtab

  " Show whitespace when editing python
  autocmd filetype python set listchars+=tab:>.,trail:.
endif
