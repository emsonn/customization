set hlsearch
set number relativenumber

" Toggles between relative and not relative numbering for insert and default
" modes
augroup numbertoggle
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
        autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

autocmd Filetype txt setlocal tabstop=4
autocmd Filetype html setlocal tabstop=4
autocmd Filetype css setlocal tabstop=4
autocmd Filetype javascript setlocal tabstop=4
autocmd Filetype c setlocal tabstop=4
autocmd Filetype cpp setlocal tabstop=4
autocmd Filetype java setlocal tabstop=4
autocmd Filetype python setlocal tabstop=4

" Bolds the current line number to enable relative numbering
hi CursorLineNR cterm=bold
augroup CLNRSet
        autocmd! ColorScheme * hi CursorLineNR cterm=bold
augroup END

" Colorscheme
" syntax enable
" color materialshell-dark 
" set background=dark
" colorscheme hybrid_reverse

" Will autodownload vim-plug if not already downloaded 
if empty(glob('~/.vim/autoload/plug.vim'))
        silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Will load every plugin - PlugInstall, PlugUpgrade, PlugClean in vim
call plug#begin('~/.vim/plugged')

        Plug 'scrooloose/nerdtree'
        Plug 'bling/vim-airline'
"       Plug 'carloscuesta/materialshell'
"       Plug 'kristijanhusak/vim-hybrid-material'
"       Plug 'w0ng/vim-hybrid'

call plug#end()
