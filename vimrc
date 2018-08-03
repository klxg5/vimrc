syntax enable

set backspace=indent,eol,start				"Make backspace behave correctly"
let mapleader = ','					"the default leader is now comma"
set number relativenumber
set linespace=13					"only works in GUIs"

"-=-=-Visuals-=-=-"
set guifont=Fira_Code:h9:b
colorscheme desert

"-=-=-Searching-=-=-"
set hlsearch
set incsearch

"-=-=-Mappings-=-=-"
"easy to edit vimrc
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"highlight removal"
nmap <Leader><space> :nohlsearch<cr>


"-=-=-Auto-Commands-=-=-"


"automatically scource the Vimrc file on save"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
augroup numbertoggle
	autocmd BufEnter,FocusGained,InsertLeave 	* set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter		* set norelativenumber
augroup END
