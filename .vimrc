"--------------------
"Note
"--------------------
"How to setup
"
"* mkdir -p ~/.vim/bundle
"* git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
"* vim
"* :NeobundleInstall

"--------------------
"Environment Settings 
"--------------------

"Disable SoftTab
set noexpandtab
"Silent
set visualbell t_vb=
"Display Number
set number
"See under Window
set scrolloff=5
"Search Highlight
set hlsearch
"Setting Tab Width
set tabstop=2
"Setting autoident detail
set shiftwidth=2
"File Encoding
set encoding=utf-8
"Add automatically judge file encode
"set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
"Wrap or Not Wrap
set wrap
"Case-Insensive
set ignorecase
"Type jj quickly in INSERT MODE is same as ESC
inoremap jj <Esc>
"Do not make Backup File
set noswapfile
set nobackup
"Can Change File without File not Saved
set hidden
"Add status
set laststatus=2
"Can move anywhere
set virtualedit=all
"Show Invisible Letter
set list
set listchars=tab:▸-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
"available mouse"
set mouse=a
"command shortcut
command NT NERDTree
command QR QuickRun

"------------------
"NeoBundle Settings
"------------------

if has('vim_starting')
  set nocompatible

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

  " Required:
call neobundle#begin(expand('~/.vim/bundle/'))

  " Let NeoBundle manage itself
  " Required:
NeoBundleFetch 'Shougo/neobundle.vim'

  " My Bundles here:
NeoBundle 'tpope/vim-surround'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'tpope/vim-endwise'
" colorscheme
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'croaker/mustang-vim'
NeoBundle 'jeffreyiacono/vim-colors-wombat'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'vim-scripts/Lucius'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-scripts/Zenburn'
NeoBundle 'mrkn/mrkn256.vim'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'therubymug/vim-pyte'

" Lightline Setting
let g:lightline = {
	\ 'colorscheme': 'jellybeans',
	\ 'separator': { 'left': '', 'right': '' },
	\ 'subseparator': { 'left': '|', 'right': '|' }
	\}
" Colorscheme Setting
syntax enable
hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c

  " Required:
call neobundle#end()

  " Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently pronpt you to install them.
NeoBundleCheck

colorscheme jellybeans
