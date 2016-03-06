"http://peace-pipe.blogspot.com/2006/05/vimrc-vim.html
set tabstop=2
set shiftwidth=2
set softtabstop=0
set expandtab

"Pathogen"
"mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
execute pathogen#infect()

"Syntastic"
"cd ~/.vim/bundle && git clone https://github.com/scrooloose/syntastic.git
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"ESLint"
"npm install -g eslint babel-eslint eslint-plugin-react
let g:syntastic_javascript_checkers = ['eslint']

" swap file in a common location
" http://stackoverflow.com/questions/23703923/gitignore-is-not-ignoring-my-vim-temporary-files
set dir=~/.vim/_swap//

" back files (~) in a common location if possible
set backup
set backupdir=~/.vim/_backup/,~/tmp,.

" turn on undo file, put them in a common location
set undofile
set undodir=~/.vim/_undo/

" vim-elixir
" git clone https://github.com/elixir-lang/vim-elixir.git ~/.vim/bundle/vim-elixir

set background=dark
let g:hybrid_custom_term_colors = 1
colorscheme hybrid
