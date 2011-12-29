set completeopt=longest,menu
"close vi mode
set nocompatible
" 
filetype plugin indent on
" 设置python文件缩进
autocmd FileType python setlocal et sta sw=4 sts=4

set t_Co=256
" 显示行号
set number
" 设置标尺
set ruler
"设置寻找匹配高亮显示
set hlsearch
" 输入的同时进行检索
"set is

"syntax enable
" 开启高亮
syntax on

set backspace=indent,eol,start

set whichwrap=b,s,<,>,[,]

set encoding=utf-8

set langmenu=zh_CN.UTF-8

language message zh_CN.UTF-8

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set ambiwidth=double


"set sw=4
" 显示括号匹配
set showmatch
" tab 长度设置为4
set tabstop=4
" 自动缩进长度设置为4
set shiftwidth=4
" 所有的tab被替换为空格
set expandtab

"set autoindent
"set smartindent
"set smarttab

"set spell

set tw=78

set lbr

set fo+=mB

"set sm

set cin

set cino=:0g0t0(sus

set selectmode=

set keymodel=

set selection=inclusive

set wildmenu

"colo freya 
"colo zellner

colo ron
" NERD_tree 配置
" 使用NERDTree插件查看工程文件。设置快捷键
"nmap fl :NERDTreeToggle<cr>
nmap fl :NERDTreeToggle<RETURN>
let NERDTreeWinPos = "left" " where NERD tree window is placed on the screen
" Tlist 配置
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
nmap tl :Tlist<cr>

" winManager
"let g:winManagerWindowLayout='FileExplorer,BufExplorer|Tlist'
"let g:winManagerWindowLayout='FileExplorer,BufExplorer'
let g:winManagerWindowLayout='FileExplorer'
nmap wm :WMToggle<cr>
" 定义函数OpenWMToggleAndTlist()用于开启WMToggle 以及 Tlist
function! OpenWMToggleAndTlist()
    " 开启WMToggle 以及 Tlist
        "功能太强大，不会使用，有些功能用不到，所以使用WMToggle
        :NERDTreeToggle 
        ":WMToggle
        :Tlist
endf
" 打开WMToggle 以及 Tlist. 命令为:OpenWMToggle
if !exists(':OpenWMToggleAndTlist')
    command -nargs=0 OpenWMToggleAndTlist :silent call OpenWMToggleAndTlist()
end
" 映射 wt 为 OpenWMToggleAndTlist 
nmap wt :OpenWMToggleAndTlist<cr>
" 在源文件和头文件之间切换
nnoremap <silent> <F12> :A<CR>

" Cpp STL tags
set tags+=/home/linv/.vim/plugin/stl_src/stl_tags

" SuperTab 配置
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
" 插入匹配括号
inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>
"inoremap { {}<ESC>i
"inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>
"inoremap < <><ESC>i
"inoremap > <c-r>=ClosePair('>')<CR>

function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf


"NERDTree plugin
"let NERDTreeWinPos = right where NERD tree window is placed on the screen
" miniBufExplorer 配置
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

""""""""""""""""""""""""""""""
" BufExplorer
""""""""""""""""""""""""""""""
"let g:bufExplorerDefaultHelp=0       " Do not show default help.
"let g:bufExplorerShowRelativePath=1  " Show relative paths.
"let g:bufExplorerSortBy='mru'        " Sort by most recently used.
"let g:bufExplorerSplitRight=0        " Split left.
"let g:bufExplorerSplitVertical=1     " Split vertically.
"let g:bufExplorerSplitVertSize = 30  " Split width
"let g:bufExplorerUseCurrentWindow=1  " Open in new window.
"autocmd BufWinEnter \[Buf\ List\] setl nonumber 
set nowrap "不自动换行
"let g:pydiction_location = '/home/linv/.vim/pydiction/complete-dict'
