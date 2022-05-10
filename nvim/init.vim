"GistID: 3965473

set noswapfile
set mouse=
filetype off                   " required!
set runtimepath+=$HOME/.vim/repos/github.com/Shougo/dein.vim

set hidden
set nobackup
set nowritebackup

set cmdheight=2

set updatetime=300

set shortmess+=c

set signcolumn=number

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
"" call dein#add('vim-scripts/The-NERD-tree', {'on_cmd': 'NERDTreeToggle'})
call dein#add('vim-scripts/mru.vim')
call dein#add('vim-scripts/xterm-color-table.vim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('ryanoasis/vim-devicons')
call dein#add('liuchengxu/vim-which-key')

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
call dein#add('mattn/emmet-vim')

"" CODE
call dein#add('Yggdroot/indentLine')
" call dein#add('nvim-treesitter/nvim-treesitter')
call dein#add('vim-scripts/The-NERD-Commenter')
call dein#add('vim-scripts/ruby.vim', {'on_ft': ['ruby']})
call dein#add('vim-scripts/ruby-matchit', {'on_ft': ['ruby', 'eruby']})
call dein#add('hail2u/vim-css3-syntax', {'on_ft': ['css', 'less', 'scss', 'sass']})
call dein#add('vim-scripts/Markdown', {'on_ft': ['markdown', 'gmarkdown']})
call dein#add('jtratner/vim-flavored-markdown', {'on_ft': ['markdown', 'gmarkdown']})
call dein#add('pangloss/vim-javascript', {'on_ft': ['javascript']})
" call dein#add('chemzqm/vim-jsx-improve', {'on_ft': ['jsx', 'javascriptreact']})
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
call dein#add('cespare/vim-toml', {'on_ft': ['toml']})
call dein#add('codelitt/vim-qtpl', {'on_ft': ['qtpl']})
" call dein#add('HerringtonDarkholme/yats.vim', {'on_ft': ['typescript']})
" call dein#add('leafgarland/typescript-vim', {'on_ft': ['typescript']})
" call dein#add('mhartington/nvim-typescript', {'on_ft': ['typescript']})
" call dein#add('peitalin/vim-jsx-typescript', {'on_ft': ['tsx']})

call dein#add('stephpy/vim-yaml', {'on_ft': ['yaml']})
call dein#add('iamcco/markdown-preview.nvim', {'on_ft': ['markdown', 'pandoc.markdown', 'rmd'], 'build': 'sh -c "cd app && yarn install"' })
call dein#add('leafOfTree/vim-svelte-plugin')

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
" source ~/.config/nvim/twilight256.vim
colorscheme hybrid_material
set number
set timeoutlen=350
set guifont=JetBrains\ Mono\ Medium\ Regular:h13,Symbols\ Nerd\ Font:h13

" hi CursorLine term=bold cterm=bold ctermbg=234
" hi Pmenu ctermbg=235 ctermfg=255
" hi PmenuSel ctermbg=255 ctermfg=235
" hi SpellBad ctermbg=0 ctermfg=9
" hi SpellCap ctermbg=0 ctermfg=9
hi MatchParen ctermbg=yellow ctermfg=black cterm=standout
hi CocHighlightText cterm=none ctermbg=darkgray ctermfg=white


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
nnoremap <silent> <leader> :WhichKey ','<CR>

set diffopt=vertical

nnoremap <leader>" :s/'/"/g<CR>
nnoremap <leader>' :s/"/'/g<CR>

nnoremap <ESC> :nohl<CR>

nnoremap <F1> :MRU<CR>
nnoremap <F2> :FufLine<CR>
nnoremap <F3> :CocList files<CR>
nnoremap <F5> :FufRenewCache<CR>
nnoremap <F11> :echo 'nope'<CR>

let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1

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

nnoremap <C-n> :CocCommand explorer<CR>
nnoremap <leader>e :CocCommand explorer<CR>
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
:au BufNewFile,BufRead *.tsx set ft=typescript.tsx
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
let g:go_imports_autosave = 0
:au BufNewFile,BufRead *.go set tabstop=4 foldmethod=syntax
"}}}
"


:au BufNewFile,BufRead *.md set ft=ghmarkdown
:au BufNewFile,BufRead *.taskpaper set ft=taskpaper
:au BufNewFile,BufRead *.tex set ft=tex
:au BufNewFile,BufRead *.pu set ft=plantuml
:au BufNewFile,BufRead *.yaml,*.yml set ft=yaml foldmethod=indent

" Use K to show documentation in preview window.
let g:go_doc_keywordprg_enabled=0
nnoremap K :call CocActionAsync('doHover')<CR>
autocmd CursorHold * silent call CocActionAsync('highlight')

" function! s:show_documentation()
  " if (index(['vim','help'], &filetype) >= 0)
    " execute 'h '.expand('<cword>')
  " else
    " call CocAction('doHover')
  " endif
" endfunction

let g:which_key_map = {}
let g:which_key_map['/'] = [ '<plug>NERDCommenterToggle'          , 'comment' ]
let g:which_key_map['.'] = [ ':e $MYVIMRC'                        , 'open init' ]
let g:which_key_map[';'] = [ ':Commands'                          , 'commands' ]
let g:which_key_map['='] = [ '<C-W>='                             , 'balance windows' ]
let g:which_key_map['d'] = [ ':Bdelete'                           , 'delete buffer']
let g:which_key_map['e'] = [ ':CocCommand explorer'               , 'explorer' ]
let g:which_key_map['h'] = [ '<C-W>s'                             , 'split below']
let g:which_key_map['m'] = [ ':call WindowSwap#EasyWindowSwap()'  , 'move window' ]
let g:which_key_map['n'] = [ ':let @/ = ""'                       , 'no highlight' ]
let g:which_key_map['p'] = [ ':Files'                             , 'search files' ]
let g:which_key_map['q'] = [ 'q'                                  , 'quit' ]
let g:which_key_map['r'] = [ ':RnvimrToggle'                      , 'ranger' ]
let g:which_key_map['u'] = [ ':UndotreeToggle'                    , 'undo tree']
let g:which_key_map['v'] = [ '<C-W>v'                             , 'split right']
let g:which_key_map['W'] = [ 'w'                                  , 'write' ]
let g:which_key_map['z'] = [ 'Goyo'                               , 'zen' ]

let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : [':CocCommand editor.action.organizeImport', 'org imports'],
      \ 'O' : [':CocList outline'                    , 'outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-references)'              , 'references'],
      \ 'R' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 'S' : [':CocList snippets'                   , 'snippets'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }

call which_key#register(',', "g:which_key_map")

imap <C-j> <Plug>(coc-snippets-expand-jump)
xmap <leader>x  <Plug>(coc-convert-snippet)
