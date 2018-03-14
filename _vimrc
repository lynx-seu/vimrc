set go-=r
set go-=l

if has("gui_running")
    "set guifont=Ubuntu_Mono_derivative_Powerlin:h12
    "set guifont=Monaco_for_Powerline:h12
    set guifont=Consolas_for_Powerline_FixedD:h10
    set go-=m
    set go-=T

    set hidden
    set lsp=6
    set lines=60 columns=120
    winpos 1200 0

    "-- 80 columns limit
    "let &colorcolumn=join(range(81,999),",")
    "let &colorcolumn="80,".join(range(400,999),",")
endif

set relativenumber

" 自动设置当前编辑的文件所在目录为当前目录
" set autochdir

" 当前行
set cursorline
syntax enable

" highlight
set hlsearch

"set guifont=Consolas\ for\ Powerline:h13

" 设定默认解码
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,gbk,gb2312,gb18030,cp936,usc-bom,euc-jp

" 不要使用vi的键盘模式，而是vim自己的
set nocompatible

" history文件中需要记录的行数
set history=600

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 与windows共享剪贴板
set clipboard+=unnamed

" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on

" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 默认窗口分割方向
set splitright
" 显示匹配
set showmatch

set foldlevel=2
set foldmethod=syntax

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 不要备份文件（根据自己需要取舍）
set nobackup

" 不要生成swap文件，当buffer被丢弃的时候隐藏它
set noswapfile
"setlocal noswapfile
set bufhidden=hide

" 增强模式中的命令行自动完成操作
set wildmenu

" 在状态行上显示光标所在位置的行号和列号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2

" 使回格键（backspace）正常处理indent, eol, start等
set backspace=indent,eol,start

" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a

" 启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 不让vim发出讨厌的滴滴声
set noerrorbells

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1

" 在搜索的时候忽略大小写
set ignorecase

" 不要高亮被搜索的句子（phrases）
" set nohlsearch

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch

" 光标移动到buffer的顶部和底部时保持5行距离
" 999一直在屏幕中间
set scrolloff=5

" 总是显示状态行
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动格式化
set formatoptions=tcrqn

" 继承前一行的缩进方式，特别适用于多行注释
set autoindent

" 为C程序提供自动缩进
set smartindent

" 使用C样式的缩进
set cindent

" 制表符为4
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

" 不要用空格代替制表符
set expandtab

" 不要换行
set nowrap

" 在行和段开始处使用制表符
set smarttab

" vim自身设置，不显示预览窗口
set completeopt=menuone 

" 提示框
"highlight Pmenu guibg=darkgrey guifg=black
"highlight PmenuSel guibg=lightgrey guifg=black

" 设定鼠标功能
set mousehide
set mousemodel=extend


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 键映射
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"修改<leader>的映射键为','
let mapleader=","


" 自动保存上次编辑位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif



"   + ----------------------------------------- +
"   |                                           |
"   |                插件配置                   |
"   |                                           |
"   + ----------------------------------------- +



call plug#begin('$VIM/vimfiles/plugged')

" User Interface
"""""""""""""""""""""""""""""""
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'mswift42/vim-themes'
"Plug 'rafi/awesome-vim-colorschemes'
Plug 'google/vim-colorscheme-primary'


" syntax
Plug 'cespare/vim-toml'

"adjust to nvim
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

" AutoComplete
"""""""""""""""""""""""""""""""
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
"Plug 'honza/vim-snippets'
"Plug 'xolox/vim-misc'
"Plug 'xolox/vim-lua-ftplugin'
Plug 'richq/vim-cmake-completion'
Plug 'eagletmt/neco-ghc'
Plug 'rust-lang/rust.vim'
"Plug 'racer-rust/vim-racer'
Plug 'sebastianmarkow/deoplete-rust'
Plug 'zchee/deoplete-clang'
Plug 'neomake/neomake'
Plug 'zchee/deoplete-go', { 'do': 'make'}


" Tools
""""""""""""""""""""""""""""""
Plug 'Shougo/denite.nvim'
Plug 'Shougo/deol.nvim'
" Not Usable Yet
"Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'Shougo/deoppet.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'ervandew/supertab'
Plug 'chemzqm/vim-easygit'
Plug 'chemzqm/denite-git'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'

call plug#end()


let g:python3_host_prog='C:\Users\Administrator\AppData\Local\Programs\Python\Python36-32\python.exe'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 NerdTree                  """""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""" 
function! ToggleNerdtree()
    NERDTreeToggle
    set go-=L
endfunction
nnoremap nt :call ToggleNerdtree()<CR>

let NERDChristmasTree=1
"let NERDTreeChDirMode=0 
let NERDTreeDirArrows=1
let NERDTreeAutoCenter=1
let NERDTreeCaseSensitiveSort=0
let NERDTreeHighlightCursorline=1
let NERDTreeWinSize=25
"关闭文件后只剩NerdTree的时候也一并关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 Airline                   """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1

let g:airline#extensions#default#layout = [ ['a', 'b', 'c'], ['z', 'warning'] ]
"let g:airline_section_t = '%{strftime("%a %k:%M")}'
let g:airline_section_z = '%3p%% %l:%c'
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 Deoplete                   """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case            = 1
let g:deoplete#enable_camel_case            = 1
let g:deoplete#auto_completion_start_length = 2
let g:deoplete#max_list                     = 10

let g:deoplete#sources#clang#libclang_path = '/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
let g:deoplete#sources#clang#clang_header  = '/Library/Developer/CommandLineTools/usr/lib/clang'
"
" to make xolox/lua-ftplugin work
"let g:lua_check_syntax = 1
"let g:lua_complete_omni = 1
"let g:lua_complete_dynamic = 0
"let g:lua_define_completion_mappings = 0
"if !exists('g:deoplete#omni#input_patterns')
    "let g:deoplete#omni#input_patterns = {}
"endif
"if !exists('g:deoplete#omni#functions')
    "let g:deoplete#omni#functions = {}
"endif
"let g:deoplete#omni#input_patterns.lua = '\w+|[^. *\t][.:]\w*'
"let g:deoplete#omni#functions.lua = 'xolox#lua#omnifunc'
"" snippets
""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 denite            """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
" reset 50% winheight on window resize
augroup deniteresize
  autocmd!
  autocmd VimResized,VimEnter * call denite#custom#option('default',
        \'winheight', winheight(0) / 2)
augroup end

call denite#custom#option('default', {
      \ 'prompt': '?'
      \ })

"call denite#custom#var('file_rec', 'command',
"      \ ['rg', '--files', '--glob', '!.git', ''])
"call denite#custom#var('grep', 'command', ['rg'])
"call denite#custom#var('grep', 'default_opts',
"      \ ['--hidden', '--vimgrep', '--no-heading', '-S'])
"call denite#custom#var('grep', 'recursive_opts', [])
"call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
"call denite#custom#var('grep', 'separator', ['--'])
"call denite#custom#var('grep', 'final_opts', [])
call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', '<Esc>', '<denite:enter_mode:normal>',
      \'noremap')
call denite#custom#map('normal', '<Esc>', '<NOP>',
      \'noremap')
call denite#custom#map('insert', '<C-v>', '<denite:do_action:vsplit>',
      \'noremap')
call denite#custom#map('normal', '<C-v>', '<denite:do_action:vsplit>',
      \'noremap')
call denite#custom#map('normal', 'dw', '<denite:delete_word_after_caret>',
      \'noremap')


call denite#custom#alias('source', 'file_rec/git', 'file_rec')
call denite#custom#var('file_rec/git', 'command',
    \ ['git', 'ls-files', '-co', '--exclude-standard'])
nnoremap <silent> <C-p> :<C-u>Denite
    \ `finddir('.git', ';') != '' ? 'file_rec/git' : 'file_rec'`<CR>
nnoremap <silent> <leader>p :<C-u>Denite
    \ `finddir('.git', ';') != '' ? 'file_rec/git' : 'file_rec'`<CR>


" denite git status
call denite#custom#map(
      \ 'normal',
      \ 'a',
      \ '<denite:do_action:add>',
      \ 'noremap'
      \)

call denite#custom#map(
      \ 'normal',
      \ 'd',
      \ '<denite:do_action:delete>',
      \ 'noremap'
      \)

call denite#custom#map(
      \ 'normal',
      \ 'r',
      \ '<denite:do_action:reset>',
      \ 'noremap'
      \)

nnoremap <leader>gl :<C-u>Denite gitlog:all<CR>
nnoremap <leader>gs :<C-u>Denite gitstatus<CR>
nnoremap <leader>s :<C-u>Denite buffer<CR>
nnoremap <leader>8 :<C-u>DeniteCursorWord grep:. -mode=normal<CR>
nnoremap <leader>/ :<C-u>Denite grep:. -mode=normal<CR>
nnoremap <leader>d :<C-u>DeniteBufferDir file_rec<CR>

"""""""""""""""""""""""""""""""""""""""""""""
"                Haskell                    "
"""""""""""""""""""""""""""""""""""""""""""""
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords


"""""""""""""""""""""""""""""""""""""""""""""
"                Rust                       "
"""""""""""""""""""""""""""""""""""""""""""""
let g:deoplete#sources#rust#racer_binary='C:/Users/Administrator/.cargo/bin/racer.exe'
"let g:deoplete#sources#rust#rust_source_path='/Users/hxl/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src'
let g:deoplete#sources#rust#rust_source_path='C:/Users/Administrator/.rustup/toolchains/stable-x86_64-pc-windows-msvc/lib/rustlib/src/rust/src'


"""""""""""""""""""""""""""""""""""""""""""""
"                Neosnippet                       "
"""""""""""""""""""""""""""""""""""""""""""""
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

"""""""""""""""""""""""""""""""""""""""""""""
"                Startify                   "
"""""""""""""""""""""""""""""""""""""""""""""
" 起始页显示的列表长度
let g:startify_files_number = 8
let g:startify_change_to_dir = 1

" 是否自动加载目录下的Session.vim, 很好用
let g:startify_session_autoload = 1
let g:startify_list_order = ['sessions', 'files']



" SuperTab
let g:SuperTabDefaultCompletionType = 'context'












"
"set bg=dark
set bg=light
set t_Co=256
"color solarized8_flat
color PaperColor
"colorscheme desertink
"color wombat256
"color onedark
"colorscheme gruvbox
"color desert
let g:airline_theme = 'papercolor'

" 提示框
highlight Pmenu guibg=darkgrey guifg=black
highlight PmenuSel guibg=lightgrey guifg=black

" --------------- key mapping --------------- "
nnoremap <leader>` :terminal<CR>
"set shell=\"c:\windows\system\cmd.exe \k \"\"c:\MinGW\setpaths.cmd\"\"\"
"nnoremap <leader>` :shell<CR>
nnoremap <leader>w :Startify<CR>
nnoremap <leader>q :q!<CR>

tnoremap <Esc> <C-\><C-n>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-N> :bn<CR>

nmap <C-_> <leader>c<space>
vmap <C-_> <leader>c<space><CR>gv

let g:SuperTabMappingForward = '<tab>'
let g:SuperTabMappingBackward = '<s-tab>'

nmap <F5> :term make<CR> 
nmap <F6> :term make 
au FocusLost * silent! up
