" Modeline and notes {
" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker spell:
" }

" Bundle Support {
	set nocompatible               " be iMproved
	filetype off                   " required!

	set rtp+=~/.vim/bundle/vundle/
	call vundle#rc()
" }

" Bundles {

    " Use local bundles if available {
        if filereadable(expand("~/.vimrc.bundles"))
            source ~/.vimrc.bundles
        endif
    " }

    filetype plugin indent on     " required for bundles!
    
" }

" General {
    " ',' as leader
    let mapleader = ','
    if !has('gui')
        "set term=$TERM          " Make arrow and other keys work
    endif
    filetype plugin indent on   " Automatically detect file types.
    syntax on                   " Syntax highlighting
    set mouse=a                 " Automatically enable mouse usage
    set mousehide               " Hide the mouse cursor while typing
    scriptencoding utf-8
    set encoding=utf-8          "          necessary to show Unicode glyphs in vim-powerline
    set laststatus=2            "          Always show the statusline (vim-powerline)

    if has ('x') && has ('gui') " On Linux use + register for copy-paste
        set clipboard=unnamedplus
    elseif has ('gui')          " On mac and Windows, use * register for copy-paste
        set clipboard=unnamed
    endif
    set cursorline
    set showmode
    set nu " linenumbers

 
    "set autowrite                       " Automatically write a file when leaving a modified buffer
    set shortmess+=filmnrxoOtT          " Abbrev. of messages (avoids 'hit enter')
    set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
    set virtualedit=onemore             " Allow for cursor beyond last character
    set history=1000                    " Store a ton of history (default is 20)
    set spell                           " Spell checking on
    set hidden                          " Allow buffer switching without saving
    set backup                  " Backups are nice ...
" }

" Appearance {
" Solarized {
    syntax enable
    let g:solarized_termcolors=256
    set background=dark
    colorscheme solarized
    let g:solarized_termtrans=1
    let g:solarized_contrast="high"
    let g:solarized_visibility="high"
" }

    if has('gui_running')
        set guioptions-=T           " Remove the toolbar
        set lines=40                " 40 lines of text instead of 24
        set guifont=Menlo\ Regular\ for\ Powerline:h15
    endif
" }
" Ack! {
    let g:ackprg="/usr/local/bin/ack -H --nocolor --nogroup --column"
" }

" CtrlP {
    let g:ctrlp_working_path_mode = 'ra'
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    let g:ctrlp_clear_cache_on_exit = 1
    let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
" {
