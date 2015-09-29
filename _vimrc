
""""" """ " Love your Life, please " """ """""
        """"""""" """ " """ """""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                  Vundle                   """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible	" be iMproved
filetype off		" required!

set rtp+=$VIM/vimfiles/bundle/vundle/ 
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Bundle here:
""""""""""""""
" 语法高亮
"""""""""""""""""""""""""""""""
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

" User Interface
"""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'

" AutoComplete
"""""""""""""""""""""""""""""""
Plugin 'Shougo/neocomplete'
Plugin 'honza/vim-snippets'

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'

" Tools
""""""""""""""""""""""""""""""
Plugin 'grep.vim'
Plugin 'Shougo/vimshell.vim'
"
" shell
""""""""""""""""""""""""""""""
Plugin 'edkolev/promptline.vim'


call vundle#end()
filetype plugin indent on     " required!

" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin command are not allowed..


""""""""""""""""""""""""""""""Ace""""""""""""""""""""""""""""""""""""
" 一般设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
  let g:isGUI = 1
else
  left g:isGUI = 0
endif

" 窗口位置， 大小
set lines=40 columns=110
winpos 1000 420

" 自动设置当前编辑的文件所在目录为当前目录
set autochdir

"runtime! debian.vim
" remove menubar
set go-=m
set go-=T
set go-=r
set go-=L
"set showtabline=0

" 当前行
set cursorline

" 纵向线
"augroup cch
	"autocmd! cch
	"autocmd WinLeave * set nocursorline
	"autocmd WinLeave * set nocursorcolumn
	"autocmd WinEnter,BufRead * set cursorline
""	autocmd WinEnter,BufRead * set cursorcolumn
"augroup END

" 设置配色和CSApprox
set t_Co=256
let g:CSApprox_attr_map={'bold':'bold','italic':'','sp':''}
"colo elise

syntax enable
"let g:solarized_termcolors=256
"colorscheme solarized
"set background=dark

" highlight
set hlsearch

colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

" 字体
set guifontwide=Microsoft_YaHei_Mono:h10
"set guifont=Microsoft\ YaHei\ Mono:h14
"set guifontwide=monofur_for_Powerline:h13
"set guifont=monofur_for_Powerline:h13
"

"set guifont=Dejavu_Sans_Mono_for_Powerline:h9
"set guifont=Consolas:h9.8
set guifont=Microsoft_YaHei_Mono:h9.5
"set guifont=Consolas_for_Powerline:h10
"set guifont=Inconsolata_for_Powerline:h10
"
"set guifont=monofur_for_Powerline:h13
"set guifont=monofur_for_Powerline:h13
"set guifontwide=Monaco:h13
"set guifont=Monaco:h13
"set guifontwide=YaHei\ Consolas\ Hybrid\ 12 
"set guifont=YaHei\ Consolas\ Hybrid\ 12 

" 设定默认解码
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,gbk,gb2312,gb18030,cp936,usc-bom,euc-jp

"行间距
set lsp=2

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

" 语法高亮
syntax on

" 显示行号(下面有自动侦测文件类型显示)
set nu

" 高亮字符，让其不受100列限制
":highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
":match OverLength '\%101v.*'

" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
"highlight StatusLineNC guifg=Gray guibg=White

" 默认窗口分割方向
"set splitbelow
set splitright

" 显示匹配
set showmatch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 不要备份文件（根据自己需要取舍）
set nobackup

" 不要生成swap文件，当buffer被丢弃的时候隐藏它
setlocal noswapfile
set bufhidden=hide

" 字符间插入的像素行数目
"set linespace=0

" 增强模式中的命令行自动完成操作
set wildmenu

" 在状态行上显示光标所在位置的行号和列号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2

" 使回格键（backspace）正常处理indent, eol, start等
set backspace=indent,eol,start
"set backspace=2

" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 启动的时候不显示那个援助索马里儿童的提示
"set shortmess=atI

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
set scrolloff=3

" 不要闪烁
set novisualbell

" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}

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

" 显示Tab和结尾
"set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.
"set listchars=tab:▸\ ,eol:¬
"set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$

" vim自身设置，不显示预览窗口
set completeopt=menuone 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd") 
    "autocmd FileType xml,html,slim,css,js,javascript,c,cs,java,perl,shell,bash,cpp,python,vim,php,ruby,markdown,sh,md,tex set number
    "autocmd Filetype python setlocal textwidth=79 expandtab tabstop=4 shiftwidth=4
    "autocmd Filetype php setlocal expandtab tabstop=4 shiftwidth=4
    "autocmd FileType haskell,puppet,ruby,javascript,html,slim,yaml,sass,scss,css,jinja,vim setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
    "autocmd FileType text setlocal textwidth=80
    "autocmd FileType java,c,cpp,cs vmap <C-o> <ESC>'<o
    "autocmd FileType xml,html vmap <C-o> <ESC>'<i<!--<ESC>o<ESC>'>o-->
    ""autocmd FileType html,text,php,vim,c,java,xml,bash,shell,perl setlocal textwidth=100
    ""autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
    ""autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag.vim/plugin/closetag.vim

    "au FileType html,javascript let g:javascript_enable_domhtmlcss = 1
    "au BufRead,BufNewFile *.json setfiletype json syntax=javascript
    "au BufRead,BufNewFile *.js setfiletype jquery
    "au BufRead,BufNewFile *.md setfiletype markdown
    "au BufRead,BufNewFile *.less setfiletype css
    "au BufRead,BufNewFile *.styl setfiletype css
    
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \ exe " normal g`\"" |
    \ endif
endif "has("autocmd")"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 键映射
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"修改<leader>的映射键为','
let mapleader="\\"


" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 NerdTree                  """""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""" 
"设置F9为开启快捷方式
nmap nt :NERDTreeMirror<CR>
nmap nt :NERDTreeToggle<CR>
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
"               NerdCommenter               """""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""" 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                  Grep                     """""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""" 
nnoremap <silent> <C-G> :Grep<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                Powerline                  """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:Powerline_symbols = 'fancy'  " 启用 smartcase.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 Airline                   """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1

let g:airline_theme = 'solarized'

let g:airline#extensions#default#layout = [
	\ [ 'a', 'b', 'c' ],
	\ [ 'x', 'y', 'z', 'warning', 't' ]
	\ ]
let g:airline_section_t = '%{strftime("%a %k:%M")}'

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" powerline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                Promptline                 """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:promptline_theme = 'airline_visual'
"let g:promptline_preset = 'full'

"let g:promptline_powerline_symbols = 0
"let g:promptline_symbols = {
  "\ 'left'       : '⮀',
  "\ 'left_alt'   : '&',
  "\ 'dir_sep'    : ' ⮁ ',
  "\ 'truncation' : '···',
  "\ 'vcs_branch' : '⭠',
  "\ 'space'      : ' '}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               NeoComplete                 """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
" 停用 AutoComplPop.
let g:acp_enableAtStartup = 0
" 启用 neocomplete.
let g:neocomplete#enable_at_startup = 1
"
let g:neocomplete#enable_smart_case = 1
" 设定最小语法关键词长度.
let g:neocomplete#sources#syntax#min_keyword_length = 3
"
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" 定义字典.
let g:neocomplete#dictionary_filetype_lists = {
	\ 'default' : '',
	\ 'vimshell' : $HOME.'/.vimshell_hist',
	\ 'scheme' : $HOME.'/.gosh_completions',
	\ }
  "\ 'php' : $HOME.'/.vim/dict/php.dic',
  "	\ 'css' : $HOME.'.vim/dict/css.dic',
  "	\ 'javascript' : $HOME.'.vim/dict/javascript.dic'


" 定义关键词.
if !exists('g:neocomplete#keyword_patterns')
	let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" 插件键映射.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" 类似于SuperTab用法 .
"imap <expr><TAB> neocomplete#sources#snippets_complete#expandable() ? "\<Plug>(neocomplete#snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" 推荐的键映射.
" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
	"return neocomplete#close_popup() . "\<CR>"
	"" For no inserting <CR> key.
	""return pumvisible() ? neocomplete#close_popup() : "\<CR>"
"endfunction

"" <TAB>: completion. NO USE with snipmate
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><C-Y>  neocomplete#close_popup()
"inoremap <expr><C-e>  neocomplete#cancel_popup()

"inoremap <expr><Enter>  pumvisible() ? neocomplete#close_popup()."\<C-n>" : "\<Enter>"
"inoremap <expr><Enter>  pumvisible() ? "\<C-Y>" : "\<Enter>"

" 类似于AutoComplPop用法 .
"let g:neocomplete#enable_auto_select = 1
" 类似于 Shell 用法(不推荐).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplete#smart_close_popup() . "\<CR>"

" 启用 omni 补全.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP "vim默认
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

" 启用 heavy omni 补全.
if !exists('g:neocomplete#sources#omni#functions')
	let g:neocomplete#sources#omni#functions = {}
endif
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif


"let g:neocomplete#omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"let g:neocomplete#omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

" 兼容clang_complete
"if !exists('g:neocomplete#force_omni_input_patterns')
  "let g:neocomplete#force_omni_input_patterns = {}
"endif
"let g:neocomplete#force_overwrite_completefunc = 1
"let g:neocomplete#force_omni_input_patterns.c =
  "\ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
"let g:neocomplete#force_omni_input_patterns.cpp =
  "\ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
"let g:neocomplete#force_omni_input_patterns.objc =
  "\ '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)'
"let g:neocomplete#force_omni_input_patterns.objcpp =
  "\ '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)\|\h\w*::\w*'
"let g:clang_complete_auto = 0
"let g:clang_auto_select = 0
""let g:clang_use_library = 1

"" 兼容jedi
"autocmd FileType python setlocal omnifunc=jedi#completions
"let g:jedi#completions_enabled = 0
"let g:jedi#auto_vim_configuration = 0
"let g:neocomplete#force_omni_input_patterns.python =
"\ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'

" rank sourch list "deleted
"let g:neocomplete#source_rank = {
"	\ 'buffer_complete'     : 6,
"	\ 'dictionary_complete' : 5,
"	\ 'syntax_complete'     : 4,
"	\ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                NeoSnippet                """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin key-mappings.
"imap <C-k>	<Plug>(neosnippet_expand_or_jump)
"smap <C-k>	<Plug>(neosnippet_expand_or_jump)
"xmap <C-k>	<Plug>(neosnippet_expand_target)

""SuperTab like snippets behavior.
""imap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
""smap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)"
"\: pumvisible() ? "\<C-n>" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)"
"\: "\<TAB>"

""For snippet_complete marker.
"if has('conceal')
	"set conceallevel=2 concealcursor=i
"endif

" Tell Neosnippet about the other snippets
" let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"              Clang_Complete              """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:clang_complete_copen = 1
"let g:clang_periodic_quickfix = 1
"let g:clang_snippets = 1
"let g:clang_close_preview = 1
"let g:clang_use_library = 1
"let g:clang_complete_auto = 0
"let g:clang_auto_select = 0
""let g:clang_user_options = '|| exit 0'
"let g:clang_user_options = '-std=c++11'
"let g:clang_library_path = "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib"
""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""               Syntastic                  """""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_error_symbol = '✗✗'
"let g:syntastic_style_error_symbol = '✠✠'
"let g:syntastic_warning_symbol = '∆∆'
"let g:syntastic_style_warning_symbol = '≈≈'
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_loc_list_height = 5
"let g:syntastic_python_checkers=['flake8']
"let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
""phpcs，tab 4个空格，编码参考使用CodeIgniter风格
"let g:syntastic_phpcs_conf = "--tab-width=4 --standard=CodeIgniter"
"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler_options = '-std=c++11'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               EasyMotion                 """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
"兼容大部分配色方案
"hi link EasyMotionTarget ErrorMsg
"hi link EasyMotionShade  Comment

" -----------------------------------------------------------------------------------
" 提示框
highlight Pmenu guibg=darkgrey guifg=black
highlight PmenuSel guibg=lightgrey guifg=black
" ------------ 自定义功能 ------------
" 设定鼠标功能
set mousehide
set mousemodel=extend
" ------------ 自定义按键映射 ------------
map <C-o> :browse confirm e<cr>
map <C-s> :w<cr>
map <ESC> <C-s>
map <C-j> :bn<Enter>
map <C-k> :bp<Enter>
"map <C-[> <C-t>

" ------ f5编译单文件cpp ------
" F5 c/cpp 暂不处理
map <F5> :call Compile()<CR>
imap <F5> <ESC>:call Compile()<CR>

func! Compile()
    if (&filetype == 'c') || (&filetype == "cpp")
        "call Make()
    elseif &filetype == "go"
        exec "!go run %"
    elseif &filetype == "lua"
        exec "!lua %"
    endif
endfunc


func! Make()
    exe ":ccl"
    exe ":update"
    exe ":!make"
    echohl WarningMsg | echo " compiling..."
    exe ":!%<.exe"
endfunc


"调用AStyle程序，进行代码美化
func CodeFormat()
          "取得当前光标所在行号
          let lineNum = line(".")
          "C源程序
          if (&filetype == 'c') || (&filetype == 'cpp')
                    "执行调用外部程序的命令
                    exec "%! astyle -A3Lfpjk3NS\<CR>"
          "JAVA源程序
          elseif &filetype == 'java'
                    "执行调用外部程序的命令
                    exec "%! astyle -A2Lfpjk3NS\<CR>"
          else 
                    "提示信息
                    echo "不支持".&filetype."文件类型。"
          endif
          返回先前光标所在行
          exec lineNum
endfunc
"映射代码美化函数到Shift+f快捷键
map <F8> <Esc>:call CodeFormat()<CR>


" ----------------------- auto commands ----------------------------- "
" BufWritePost : after the file is saved;
"autocmd BufWritePre *.c,*.cpp execute '!astyle %'
