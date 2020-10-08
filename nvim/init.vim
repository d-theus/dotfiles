"GistID: 3965473

set mouse=
filetype off                   " required!
set runtimepath+=$HOME/.vim/repos/github.com/Shougo/dein.vim

set hidden
set nobackup
set nowritebackup

set cmdheight=2

set updatetime=300

set shortmess+=c

set signcolumn=yes

call dein#begin('$HOME/.vim')

call dein#add('Shougo/dein.vim')

call dein#add('vim-scripts/L9')
call dein#add('vim-scripts/WebAPI.vim')
call dein#add('vim-scripts/Gist.vim', {'on_cmd': 'Gist'})
call dein#add('vim-scripts/filetype.vim')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-dispatch')
call dein#add('rking/ag.vim')
call dein#add('neoclide/coc.nvim', {'merge':0, 'rev': 'release'})
call dein#add('sgur/vim-editorconfig')

""  UI
call dein#add('flazz/vim-colorschemes')
call dein#add('vim-scripts/The-NERD-tree', {'on_cmd': 'NERDTreeToggle'})
call dein#add('vim-scripts/mru.vim')
call dein#add('vim-scripts/xterm-color-table.vim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')

"" MOTION / HELPERS
call dein#add('vim-scripts/surround.vim')
call dein#add('vim-scripts/repeat.vim')
call dein#add('vim-scripts/FuzzyFinder' )
call dein#add('vim-scripts/unimpaired.vim')
call dein#add('vim-scripts/delimitMate.vim')
call dein#add('vim-scripts/Tabular')
call dein#add('vim-scripts/matchit.zip')
call dein#add('triglav/vim-visual-increment')
call dein#add('junegunn/vim-easy-align')

"" CODE
call dein#add('Yggdroot/indentLine')
call dein#add('vim-scripts/The-NERD-Commenter')
call dein#add('vim-scripts/ruby.vim', {'on_ft': ['ruby']})
call dein#add('vim-scripts/ruby-matchit', {'on_ft': ['ruby', 'eruby']})
call dein#add('hail2u/vim-css3-syntax', {'on_ft': ['css', 'less', 'scss', 'sass']})
call dein#add('vim-scripts/Markdown', {'on_ft': ['markdown', 'gmarkdown']})
call dein#add('jtratner/vim-flavored-markdown', {'on_ft': ['markdown', 'gmarkdown']})
call dein#add('pangloss/vim-javascript', {'on_ft': ['javascript', 'jsx']})
call dein#add('mxw/vim-jsx', {'on_ft': ['javascript', 'jsx']})
call dein#add('vim-scripts/vim-jsbeautify', {'on_ft': ['javascript', 'js']})
call dein#add('thoughtbot/vim-rspec', {'on_ft': ['ruby']})
call dein#add('tpope/vim-Bundler')
call dein#add('othree/html5.vim', {'on_ft': ['html']})
call dein#add('slim-template/vim-slim.git', {'on_ft': 'slim'})
call dein#add('tpope/vim-rails.git')
call dein#add('lucapette/vim-ruby-doc', {'on_ft': ['ruby', 'rails', 'haml', 'eruby']})
call dein#add('elixir-lang/vim-elixir', {'on_ft': ['elixir', 'ex']})
call dein#add('elzr/vim-json', {'on_ft': ['json']})
call dein#add('rhysd/vim-crystal', {'on_ft': ['crystal']})
call dein#add('fatih/vim-go', {'on_ft': ['go']})
call dein#add('HerringtonDarkholme/yats.vim', {'on_ft': ['typescript']})
call dein#add('leafgarland/typescript-vim', {'on_ft': ['typescript']})
call dein#add('mhartington/nvim-typescript', {'on_ft': ['typescript']})

call dein#end()
filetype plugin indent on
syntax enable

"{{{ filetype independent
set shell=/usr/bin/zsh
syntax on
filetype on
set encoding=utf-8

set expandtab
set shiftwidth=2
set softtabstop=2
set ai
set cin

set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase

set laststatus=2   " Always show the statusline
set nolazyredraw
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
set listchars=tab:~\ ,eol:¬,extends:❭,precedes:❬
set nowrap
set list
set foldmethod=marker
set foldlevelstart=20
source ~/.config/nvim/twilight256.vim
set number

hi CursorLine term=bold cterm=bold ctermbg=234
hi Pmenu ctermbg=235 ctermfg=255
hi PmenuSel ctermbg=255 ctermfg=235
hi SpellBad ctermbg=0 ctermfg=9
hi SpellCap ctermbg=0 ctermfg=9

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

let g:airline_powerline_fonts = 1
let g:airline_mode_map = {
    \ '__' : '-',
    \ 'n'  : 'N',
    \ 'i'  : 'I',
    \ 'R'  : 'R',
    \ 'c'  : 'C',
    \ 'v'  : 'V',
    \ 'V'  : 'V',
    \ 'x22' : 'V',
    \ 's'  : 'S',
    \ 'S'  : 'S',
    \ 'x19' : 'S',
    \ }

let mapleader=","
let localleader="\\"

set diffopt=vertical

nmap <Up> [e
nmap <Down> ]e

nnoremap <leader>" :s/'/"/g<CR>
nnoremap <leader>' :s/"/'/g<CR>

nnoremap <ESC> :nohl<CR>

nnoremap <F1> :MRU<CR>
nnoremap <F2> :FufLine<CR>
nnoremap <F3> :CocList files<CR>
nnoremap <F5> :FufRenewCache<CR>
nnoremap <F11> :echo 'nope'<CR>


let g:fuf_coveragefile_exclude = '\vnode_modules.*|tmp/.*|public/uploads/.*|log/.*|fonts/.*|assets/images/.*|squashfs-root/.*|content-fake|content-cache'

nnoremap <leader>z zMzvzz

map <F7> :wall \| make<Cr> \| :copen<Cr><C-w>w
map <F9> :make launch<Cr>

nmap <Left>  :cp<Cr>
nmap <Right> :cn<Cr>

nnoremap <silent> <C-b> :TagbarToggle<CR>
cnoreabbrev W w
cnoreabbrev ц w
cnoreabbrev Ц w

xmap ga <Plug>(EasyAlign)

nnoremap <C-n> :NERDTreeToggle<CR>
let g:nerdtree_open_cmd = 'open'

let g:neoterm_position = 'vertical'
let g:neoterm_automap_keys = ',tt'
"
let g:ale_sign_error = "!"
let g:ale_sign_warning = "!"

"}}}

"{{{ coffee
:au BufNewFile,BufRead *.js.coffee set ft=coffee
:au BufNewFile,BufRead *.coffee set ft=coffee
:au FileType coffee setl foldmethod=indent
"}}}
"{{{ ruby
:au BufNewFile,BufRead *.rb,*.erb,Rakefile set foldmethod=syntax
:au BufNewFile,BufRead *.html.erb set ft=eruby.html
:au BufNewFile,BufRead *.rb set foldmethod=indent

:au FileType ruby,eruby setlocal re=1 foldmethod=manual

:au FileType ruby nnoremap <F12> :!ripper-tags -R --exclude=vendor<CR>

let g:rspec_command = "Dispatch rspec {spec}"
let g:ruby_doc_command='open'
let g:rails_projections = {
  \ "app/components/*.rb": {
  \   "command": "component",
  \   "template": ""}}
"}}}
"{{{ js
:au BufNewFile,BufRead *.js set foldmethod=syntax
:au BufNewFile,BufRead *.js syntax region foldBraces start=\{\ end=\}\ transparent fold keepend extend
"}}}
"{{{ html, haml, slim
:au BufNewFile,BufRead *.slim set foldmethod=indent
"}}}
"{{{ css, less
:au BufNewFile,BufRead *.less set ft=less.css
"}}}
"{{{ json
let g:indentLine_concealcursor=""
let g:vim_json_syntax_concealcursor=""
:au BufNewFile,BufRead *.json set foldmethod=indent
:au BufNewFile,BufReadPost *.json set concealcursor=
"}}}
"
"{{{ go
let g:go_fmt_experimental = 1
:au BufNewFile,BufRead *.go set tabstop=4 foldmethod=syntax
"}}}
"
"{{{ typescript
:au BufNewFile,BufRead *.ts,*.tsx set ft=typescript
"}}}


:au BufNewFile,BufRead *.md set ft=ghmarkdown
:au BufNewFile,BufRead *.taskpaper set ft=taskpaper
:au BufNewFile,BufRead *.tex set ft=tex
:au BufNewFile,BufRead *.pu set ft=plantuml

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
