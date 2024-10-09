set encoding=utf-8
set fileencodings=utf-8,cp936,gb18030,big5
"set signcolumn=yes
set number

set tabstop=4
set softtabstop=4
set shiftwidth=4
set scrolloff=8
set autoindent
set cindent
set showmatch
set cursorline
set ruler

set hlsearch
set showmode
set showcmd
set t_Co=256

syntax on
syntax enable

call plug#begin()
"The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Use release branch (recommended)
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using npm
"Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
Plug 'https://github.com/morhetz/gruvbox.git'

call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

""COC.NVIM
"let g:coc_global_extensions = [
"			\'coc-vimlsp',
"			\'coc-clangd',
"			\'coc-snippets',
"			\'coc-json',
"			\'coc-python',]
"" Use tab for trigger completion with characters ahead and navigate
"" NOTE: There's always complete item selected by default, you may want to enable
"" no select by `"suggest.noselect": true` in your configuration file
"" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
"" other plugin before putting this into your config
"inoremap <silent><expr> <TAB>
"      \ coc#pum#visible() ? coc#pum#next(1) :
"      \ CheckBackspace() ? "\<Tab>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
"
"
"" Make <CR> to accept selected completion item or notify coc.nvim to format
"" <C-g>u breaks current undo, please make your own choice
"inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
"                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"function! CheckBackspace() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

"" Formatting selected code
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)
"augroup mygroup
"  autocmd!
"  " Setup formatexpr specified filetype(s)
"  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"  " Update signature help on jump placeholder
"  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end

colorscheme gruvbox
set background=dark
