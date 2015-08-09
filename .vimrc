version 6.0

"------------------------------
"various perl source shortcuts
"------------------------------
map !L iuse Log::Log4perl qw(:easy);<RETURN>Log::Log4perl->easy_init($DEBUG);<RETURN><ESC>
map !P i#!/usr/local/bin/perl -w############################################ xx -- # Mike Schilli, 2015 (m@perlmeister.com)###########################################use strict;use Sysadm::Install qw(:all);
map !F o<CR><ESC>43i#<ESC>yypo}<CR><ESC>kkosub  {<CR><ESC>hi
map f !Gperl -MText::Autoformat -e'autoformat{right=>70}'
map L :silent :1,$!linenum<Return>

"------------------------------
"general settings
"------------------------------
:syntax enable
:map H gT
:map L gt
:map Q :qall<Return>
:set tabpagemax=20
set fileencoding=utf-8
set formatoptions=tcql
set history=50
set hlsearch
set ruler
set shiftwidth=4
:autocmd FileType perl :set cindent
:autocmd FileType perl :set expandtab
:autocmd FileType yaml :set expandtab
:autocmd FileType c :set cindent
:autocmd FileType c :set expandtab
set smarttab
:set tags=.ptags.txt
:nmap q :nohlsearch<CR>
:nmap , :set cindent!<CR>
set pt=<F3>
:autocmd FileType makefile :syntax off

:filetype indent on
:source ~/.vim/*.vim

:set tags=.ctags
:set iskeyword+=:
:set iskeyword-=-
