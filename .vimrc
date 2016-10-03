"----------------
"General Settings
"----------------

"Autocmd initialize
augroup MyAutoCmd
  autocmd!
augroup END
"Enable syntax hilight
syntax on
"Use spaces instead of tab
set expandtab
"Disable beep
set visualbell t_vb=
"Display number
set number
"Enable to see window below part
set scrolloff=5
"Enable search highlight
set hlsearch
"Tab width
set tabstop=2
"Used tab width in autoident
set shiftwidth=2
"Enable autoindent
set autoindent
"Enable smartindent
set smartindent
"File encoding
set encoding=utf-8
"Judge CR,CR+LF,LF automatically
set fileformats=unix,dos,mac
"Wrap lines
set wrap
"Case-Insensitive
set ignorecase
"Do not make backup file
set nobackup
"Do not make swap file
set noswapfile
"Enable to open another file even if not saved files exist
set hidden
"Display status information
set laststatus=2
"Enable to move anywhere
set virtualedit=all
"Show Invisible Letter
set list
set listchars=tab:▸-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
"Enable mouse
"set mouse=a
"Enable backspace in insert mode
set backspace=indent,eol,start
"Key aliases
inoremap jj <Esc>
inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>0i
noremap <C-e> $l
noremap <C-a> 0


"-------------
"Dein Settings
"-------------

let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . s:dein_repo_dir

let s:toml_path = s:dein_dir . '/tomls/dein.toml'
let s:lazy_toml_path = s:dein_dir . '/tomls/dein_lazy.toml'

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_path, {'lazy': 0})
  call dein#load_toml(s:lazy_toml_path, {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

"Automatically detecting filetype, loading indentation and plugin configuration for filetypes
filetype plugin indent on

if dein#check_install()
  call dein#install()
endif

"** NOTE **
"Execute commands below when:
"  - Plugins are added or removed
"  - Toml file is changed
"call dein#update() // for update
"call dein#clear_state() // remake cache file


"-------------
"Color scheme
"-------------

set background=dark
colorscheme hybrid
