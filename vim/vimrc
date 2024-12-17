" To reload .vimrc within vim run ':so %'
"

set nocompatible              " be iMproved, required for Vundle

" Auto-reload .vimrc on write
augroup ReloadVimrcOnWrite
  au!
  au! BufWritePost $MYVIMRC,$MYGVIMRC nested source %
augroup END

" -----------------------------------------------------------------------------
"  PLUGINS
" -----------------------------------------------------------------------------
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" ==========================================
filetype off                  " required before first Vundle command

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Status line
Plugin 'vim-airline/vim-airline'

" Directory tree
Plugin 'scrooloose/nerdtree'

" Conquer of Completion
Plugin 'neoclide/coc.nvim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line


" -----------------------------------------------------------------------------
"  SYSTEM SETTINGS
" -----------------------------------------------------------------------------
set shell=sh                  " I use fish shell, vim should use sh
set clipboard=unnamed         " Allow vim to use the X clipboard

set confirm                   " Confirm dialog when :q, :w or :qw fails
set lazyredraw                " No redraws in macros
set showcmd                   " Show incomplete command
set visualbell                " Use visual bell (no beeping)

" Add vim-specific bin to PATH
if !exists("g:sys_path")
  let g:sys_path = $PATH
endif
let $PATH = $HOME . '/.vim/bin/:' . g:sys_path

" -----------------------------------------------------------------------------
"  EDITOR LOOK'N'FEEL
" -----------------------------------------------------------------------------
set number                    " Show line numbers
set relativenumber            " Show relative line numbers
set scrolloff=3               " Top/bottom scroll margins
set showmatch                 " Highlight matching brace
syntax enable                 " Highlight syntax

colorscheme my_local          " Syntax colorscheme


" -----------------------------------------------------------------------------
"  BASE KEY MAPPINGS
" -----------------------------------------------------------------------------
" Map leader to <Space>
let mapleader = "\<Space>"

" Y yanks till the end of line
nnoremap Y y$

" jk to escape in Insert mode
inoremap jk <Esc>

" Esc in Normal mode to cancel highlight
nnoremap <Esc> :nohl<CR>

" Keep selection when indenting block in Visual mode
vnoremap < <gv
vnoremap > >gv


" -----------------------------------------------------------------------------
"  SPECIAL CHARACTERS
" -----------------------------------------------------------------------------
set expandtab                 " Replace <Tab> with spaces
set softtabstop=2             " <Tab> outputs 2 spaces
set shiftwidth=2              " Indentation size for >> <<

set tabstop=4                 " Display <Tab> character as 4 spaces

" Highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=59
match ExtraWhitespace /\s\+$/

" Remove trailing whitespaces on save
augroup RemoveTrailingWhitespaces
  au! BufWritePre * %s/\s\+$//e
augroup END

" Custom characters for TAB and EOL
set listchars=tab:▸·,eol:¬,extends:»,precedes:«

" <leader>p toggles invisible characters listing
nmap <leader>p : set list!<CR>


" -----------------------------------------------------------------------------
"  SEARCH SETTINGS
" -----------------------------------------------------------------------------
set ignorecase                " Ignore case
set smartcase                 " Inable smart-case search
set hlsearch                  " Highlight all search results
set incsearch                 " Incremental stirngs search


" -----------------------------------------------------------------------------
"  BUFFERS AND SPLITS
" -----------------------------------------------------------------------------
set hidden                    " Do not unload hidden buffers

" Split to right or below
set splitbelow
set splitright

" Switch buffers, vimium style
nnoremap gt :bn<CR>
nnoremap <C-k> :bn<CR>
nnoremap gT :bp<CR>
nnoremap <C-j> :bp<CR>

" <leader>x to close split or buffer
noremap <expr> <leader>x (winnr('$') > 1) ? ":q\<CR>" : ":bdel\<CR>"

" <leader>Shift-X to re-open last closed buffer
autocmd BufDelete * let g:latest_deleted_buffer = expand("<afile>:p")
nnoremap <leader>X :e <C-R>=fnameescape(g:latest_deleted_buffer)<CR><CR>

" -----------------------------------------------------------------------------
"  WILD MENU
" -----------------------------------------------------------------------------
" Enable wild menu
set wildmenu

" C-h C-j to move left; C-k C-l to move right.
cnoremap <expr> <C-h> wildmenumode() ? "\<left>" : "\<C-h>"
cnoremap <expr> <C-j> wildmenumode() ? "\<left>" : "\<C-j>"
cnoremap <expr> <C-l> wildmenumode() ? "\<right>" : "\<C-l>"
cnoremap <expr> <C-k> wildmenumode() ? "\<right>" : "\<C-k>"


" -----------------------------------------------------------------------------
" PLUGIN SETTINGS
" -----------------------------------------------------------------------------

" Airline
let g:airline_theme = 'my_local'
let g:airline#extensions#tabline#enabled = 1  " Show top tabs (buffers) bar

" --------------------------
" Nerd Tree
" --------------------------
" Toggle NerdTree on Ctrl-T
function! s:IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction
function! s:CheckIfCurrentBufferIsFile()
  return strlen(expand('%')) > 0
endfunction
" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! s:SyncTree()
  if &modifiable && s:IsNERDTreeOpen() && s:CheckIfCurrentBufferIsFile() && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction
function! s:ToggleNerdTree()
  if s:CheckIfCurrentBufferIsFile()
    if s:IsNERDTreeOpen()
      NERDTreeClose
    else
      NERDTreeFind
    endif
  else
    NERDTree
  endif
endfunction
nnoremap <C-T> :call <SID>ToggleNerdTree()<CR>

" Highlight currently open buffer in NERDTree
augroup SyncNerdTree
  au! BufRead * call s:SyncTree()
augroup END

" Close NerdTree on file open
let NERDTreeQuitOnOpen=1
" Exit Vim if NERDTree is the only window left.
au BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 &&
    \ exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" --------------------------
" CoC
" --------------------------
" Trigger completion on C-space
inoremap <silent><expr> <C-@> coc#refresh()
" <C-j> and <C-k> to navigate completion list.
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
" <CR> to complete selection
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" --------------------------
" Experiments
" --------------------------

" Function to find a syntax group name for text under cursor
function! s:SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), "synIDattr(v:val, 'name') . ' -> ' . synIDattr(synIDtrans(v:val), 'name')")
endfunc
nnoremap ? :call <SID>SynStack()<CR>

" Tmux-like select pane
function! s:SelectPane()
  let l:nr = 1
  let l:num = winnr('$')
  while l:nr <= l:num
    if win_gettype(l:nr) == ''
      let l:winpos = win_screenpos(l:nr)
      let l:line = l:winpos[0] + winheight(l:nr) / 2 - 3
      let l:col = l:winpos[1] + winwidth(l:nr) / 2 - 2
      call popup_notification(string(l:nr),
            \ #{line: l:line, col: l:col,
            \ minheight: 1, minwidth: 1,
            \ maxheight: 1, maxwidth: 1,
            \ highlight: 'WildMenu', })
    endif
    let l:nr += 1
  endwhile
  redraw
  let l:chr = getchar()
  let l:nr = nr2char(l:chr)
  if 1 <= l:nr && l:nr <= l:num
    return win_gotoid(win_getid(l:nr))
  elseif l:nr == "\e" || l:nr == "q"
    " Do nothing
  else
    echom "Invalid selection: " l:nr
  endif
endfunction
nnoremap <c-w>q :call <SID>SelectPane()<CR>

