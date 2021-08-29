" ============================================================================
"  _   _  _____  ___
" | \ | ||  ___|/ _ \
" |  \| || |_  | (_) |
" | |\  ||  _|  \__, |
" |_| \_||_|      /_/
"
" .vimrc file for NoiseFrk900
" ============================================================================

"GENERAL SETTINGS
execute pathogen#infect()
set termguicolors
syntax enable
colorscheme slyt
set background=dark
set hlsearch 
set tabstop=8
set cindent
set nu rnu
set foldcolumn=4
set colorcolumn=81
set nolist  
set listchars=tab:>-
set listchars+=trail:-

"KEY REMAPPINGS
""LEADERS
let mapleader = ","
let maplocalleader = "'"

""FUNCTIONS KEY MAPPINGS
nnoremap <silent> <F2> :call FoldColumnToggle()<CR>
nnoremap <silent> <F3> :set number! relativenumber!<CR>
nnoremap <silent> <F4> :call StatuslineToggle()<CR>
nnoremap <silent> <F5> :set spell!<CR>
nnoremap <silent> <F6> :call WhitespaceIndicator()<CR>
"nnoremap <silent> <F7>
"nnoremap <silent> <F8>
"nnoremap <silent> <F9>
"nnoremap <silent> <F10>
nnoremap <silent> <F12> :set omnifunc=ztcomplete#CompleteHT

""LEADER KEY MAPPINGS
nnoremap <leader>v :split $MYVIMRC<CR>
nnoremap <leader>s :source $MYVIMRC<CR>
nnoremap <leader>c :split /home/noisefrk900/.vim/colors/library.vim<CR>
nnoremap <leader>b :split /home/noisefrk900/.bashrc<CR>
nnoremap <leader>f :split /home/noisefrk900/.config/fish/config.fish<CR>
nnoremap <leader># :execute "leftabove sp ".bufname("#")<CR>
nnoremap <leader>h 0
nnoremap <leader>l $
nnoremap <leader>x **
nnoremap <leader>/ /\v
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>
nnoremap <leader>z :cnext<CR>
nnoremap <leader>a :cprevious<CR>
nnoremap <leader>q :call QuickfixToggle()<CR>
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>t :colo library<CR>
nnoremap <leader>ww :call ColorGen()<CR>
nnoremap <localleader>s iNoiseFrk900 <NoiseFreak900@gmail.com>
nnoremap <localleader>g ihttps://github.com/noisefrk900/REPO.git
inoremap <localleader>b {
inoremap <localleader>v }
inoremap <localleader><S-b> [
inoremap <localleader><S-v> ]

""MISC MAPPINGS
inoremap <silent> <C-f> <C-x><C-o>
nnoremap <silent> <C-f> i<C-x><C-o>
nnoremap <space> za
nnoremap <C-S-P> :call <SID>SynStack()<CR>
inoremap <tab> <C-v><tab>
nnoremap j gj
nnoremap k gk
"nnoremap ; :

"FUNCTIONS
""FOLD TOGGLE
function! FoldColumnToggle()
	if &foldcolumn
		setlocal foldcolumn=0
	else
		setlocal foldcolumn=4
	endif
endfunction

""LIVE WORD COUNT
let g:word_count=wordcount().words
function WordCount()
	if has_key(wordcount(),'visual_words')
		let g:word_count=wordcount().visual_words."/".wordcount().words " count selected words
	else
		let g:word_count=wordcount().cursor_words."/".wordcount().words " or shows words 'so far'
	endif
	return g:word_count
endfunction

""QUICKFIX TOGGLE
let g:quickfix_is_open = 0
function! QuickfixToggle()
	if g:quickfix_is_open
		cclose
		let g:quickfix_is_open = 0
		execute g:quickfix_return_to_window . "wincmd w"
	else
		let g:quickfix_returne_to_window = winnr()
		copen
		let g:quickfix_is_open = 1
	endif
endfunction

""STATUSLINE TOGGLE
function! StatuslineToggle()
	if &laststatus
		set laststatus=0
	else
		set laststatus=2
	endif
endfunction

""SYNTAX IDENTIFICATION
function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

""WHITESPACE INDICATOR
let g:whitespace = 0
function! WhitespaceIndicator()
	if g:whitespace
		set nolist
		let g:whitespace = 0
	else
		set list
		set listchars=tab:>-
		set listchars+=trail:-
		let g:whitespace = 1
	endif
endfunction

""COLORGEN
function! ColorGen()
		:normal 127Gww"ayiwww"byiw
		execute "27,123s/".@a."/".@b."/g"
		:normal 128Gww"ayiwww"byiw
		execute "27,123s/".@a."/".@b."/g"
		:normal 129Gww"ayiwww"byiw
		execute "27,123s/".@a."/".@b."/g"
		:normal 130Gww"ayiwww"byiw
		execute "27,123s/".@a."/".@b."/g"
		:normal 131Gww"ayiwww"byiw
		execute "27,123s/".@a."/".@b."/g"
		:normal 132Gww"ayiwww"byiw
		execute "27,123s/".@a."/".@b."/g"
		:normal 133Gww"ayiwww"byiw
		execute "27,123s/".@a."/".@b."/g"
		:normal 134Gww"ayiwww"byiw
		execute "27,123s/".@a."/".@b."/g"
		:normal 137Gww"ayiwww"byiw
		execute "27,123s/".@a."/".@b."/g"
		:normal 138Gww"ayiwww"byiw
		execute "27,123s/".@a."/".@b."/g"
		:normal 139Gww"ayiwww"byiw
		execute "27,123s/".@a."/".@b."/g"
		:normal 140Gww"ayiwww"byiw
		execute "27,123s/".@a."/".@b."/g"
		:normal 141Gww"ayiwww"byiw
		execute "27,123s/".@a."/".@b."/g"
		:normal 142Gww"ayiwww"byiw
		execute "27,123s/".@a."/".@b."/g"
		:normal 143Gww"ayiwww"byiw
		execute "27,123s/".@a."/".@b."/g"
		:normal 144Gww"ayiwww"byiw
		execute "27,123s/".@a."/".@b."/g"
		:normal 145Gww"ayiwww"byiw
		execute "27,123s/".@a."/".@b."/g"
		:normal 146Gww"ayiwww"byiw
		execute "27,123s/".@a."/".@b."/g"
endfunction 

"STATUSLINE
"set statusline+=%#StatusLine#
set statusline+=\ buf:%2n
set statusline+=\ %.25F
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\] 
set statusline+=\ %3p%%
set statusline+=\ %3l:%-3c
set statusline+=\ wc:%-9{WordCount()}

"REMEBER FOLDS
set foldenable

set foldmethod=manual
augroup remember_folds
	autocmd!
	autocmd BufWinLeave * mkview
	autocmd BufWinEnter * silent! loadview
augroup END

"SETTINGS FOR SPECIFIC FILE TYPES
augroup filetype_bashrc
	au!
	au BufEnter .bashrc nnoremap <localleader>c I#<esc>
augroup END

augroup filetype_c
	au!
	au BufEnter *.c nnoremap <localleader>c I//<esc>
	au BufEnter *.c nnoremap <localleader>C I/*<esc>
	au BufEnter *.c nnoremap <localleader>E A*/<esc>
augroup END

augroup filetype_fish
	au!
	au BufEnter *.fish set ft=sh
	au BufEnter *.fish nnoremap <localleader>c I#<esc>
augroup END

augroup filetype_py
	au!
	au BufEnter *.py nnoremap <localleader>c I#<esc>
	au BufEnter *.py nnoremap <localleader>p i#!/usr/bin/env python3.8<esc>
augroup END

augroup filetype_rb
	au!
	au BufEnter *.rb nnoremap <localleader>c I#<esc>
augroup END

augroup filetype_toml
	au!
	au BufEnter *.toml set ft=sh
	au BufEnter *.toml nnoremap <localleader>c I#<esc>
augroup END

augroup filetype_vimrc
	au!
	au BufEnter .vimrc nnoremap <localleader>c I"<esc>
augroup END

augroup filetype_vim
	au!
	au BufEnter *.vim nnoremap <localleader>c I"<esc>
augroup END

augroup filetype_zt
	au!
	au BufEnter *.zt set path=~/Library,~/Library/Bible
	au BufEnter *.zt set omnifunc=ztcomplete#CompleteHT
" Markdown
"au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md  setf markdown
augroup END
