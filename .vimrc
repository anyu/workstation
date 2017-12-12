execute pathogen#infect()
syntax enable " enable syntax processing
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set expandtab " turn tabs into spaces
set number " show line numbers
set showcmd " shows last command entered in bottom bar
set cursorline " highlight current line
hi CursorLine term=bold cterm=none guibg=Grey40
set wildmenu " visual autocomplete for command menu
set showmatch " highlight matching brackets/parens
set incsearch " search as characters are entered
nnoremap <leader><space> :no1search<CR>
set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
nnoremap <space> za
map \ :NERDTreeToggle<CR>
inoremap jk <esc>
nnoremap <leader>a :Ag

