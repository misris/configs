" 行数表示
set number
" 自動インデント
set smartindent
" 文字のないところにカーソル移動
set virtualedit=block
" タブをスペースに変換
set expandtab
" ファイル内にあるタブ文字の表示幅
set tabstop=2
" 自動インデントに使われる空白の数
set shiftwidth=2
" タグキー押下時に挿入される文字幅
set softtabstop=2
" 補完時のプレビューを表示させない
set completeopt=menuone
" escが遠いので代用
noremap <C-j> <esc>
noremap! <C-j> <esc>
" 検索結果をハイライト
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR>
nmap <C-j><C-j> :nohlsearch<CR>
" クリップボードの共有
set clipboard=unnamed

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('tomasr/molokai')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Yggdroot/indentLine')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('justmao945/vim-clang')
  call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
  call dein#add('itchyny/lightline.vim')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('posva/vim-vue')

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" deoplate
let g:deoplete#enable_at_startup = 1

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" Colorsheme:
colorscheme molokai
let g:rehash256 = 1

" <C-e>でNERDTreeをオンオフ
let g:NERDTreeShowBookmarks=1
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" インデントを「・・・」で表示
let g:indentLine_char = '·'

" vim-clang
let g:clang_format_auto = 1
let g:clang_check_syntax_auto = 1
let g:clang_c_options = '-std=gnu11'
let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'

" 自動閉じ括弧
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>

