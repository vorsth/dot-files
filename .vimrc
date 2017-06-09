" display a tab as 2 spaces
if $HOSTNAME == "unixdeva16" || $HOSTNAME == "lmsappa01" || $HOSTNAME == "lmsappb01"
  set tabstop=4
else
  set tabstop=2
endif

set expandtab
set shiftwidth=2

set ai " Auto indent
set si " Smart indent
"set ci " Copy indet
set nowrap " No wrap lines
set textwidth=0
set formatoptions-=tc

set incsearch
set smartcase   " Setting case insensitive search, see below for a few examples
set ignorecase
"  /copyright      " Case insensitive
"  /Copyright      " Case sensitive
"  /copyright\C    " Case sensitive
"  /Copyright\c    " Case insensitive

colorscheme slate
set number

set laststatus=2
set statusline=%F[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c\ \|\ %l/%L\ %P

set timeoutlen=100

"remember folds
"autocmd BufWinLeave * mkview
"autocmd BufRead * silent loadview

" Map 'm' diff-put, next-change (really only used with vimdiff)
nmap m dp]c

function! FormatJSON()
  :%!python -m json.tool
endfunction
