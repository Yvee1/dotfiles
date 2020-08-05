" Autoinstall vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin()
" Haskell
Plug 'neovimhaskell/haskell-vim'

" Horizon color theme
Plug 'ntk148v/vim-horizon'

" Vimwiki for notes
Plug 'vimwiki/vimwiki'

" Vimtex for latex
Plug 'lervag/vimtex'

" Snippets!
Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" Autosaves on going to normal mode
Plug '907th/vim-auto-save'
let g:auto_save = 1

call plug#end()

" Theme
let g:lightline = {'colorscheme' : 'horizon'}
set termguicolors
colorscheme horizon

 augroup vimrc
    autocmd!
    autocmd ColorScheme * highlight Conceal guifg=#e0e0e0 guibg=#1c1e26
 augroup END

" Needed for vimwiki
set nocompatible " not necessary for nvim
filetype plugin on
syntax on

" Vimtex options
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" Tabs
set tabstop=4
set shiftwidth=4
set expandtab

set number
set relativenumber

