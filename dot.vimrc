set list
set lcs=tab:>.,eol:$,trail:_,extends:\

set nocompatible               " be iMproved
filetype off                   " required!

"set nocompatible
"filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'fholgado/minibufexpl.vim'
Bundle 'pangloss/vim-javascript'

set nocompatible
set showmatch showmode showcmd
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

syntax on
filetype on
filetype indent on
filetype plugin on

set modeline

source $VIMRUNTIME/macros/matchit.vim

set ts=4 sw=4 softtabstop=4 expandtab
"au FileType php set ts=4 sw=4 softtabstop=4 expandtab
"au FileType sh set ts=4 sw=4 softtabstop=4 expandtab
"au FileType html set ts=4 sw=4 softtabstop=4 expandtab
"au FileType css set ts=4 sw=4 softtabstop=4 expandtab
"au FileType python set ts=4 sw=4 softtabstop=4 expandtab

au FileType javascript set ts=4 sw=4 expandtab
au BufNewFile *.js set ft=javascript fenc=utf-8

" Load settings for each location.
augroup vimrc-local
    autocmd!
    autocmd BufNewFile,BufReadPost * call s:vimrc_local(expand(':p:h'))
augroup END

function! s:vimrc_local(loc)
    let files = findfile('.vimrc.local', escape(a:loc, ' ') . ';', -1)
    for i in reverse(filter(files, 'filereadable(v:val)'))
        source `=i`
    endfor
endfunction

