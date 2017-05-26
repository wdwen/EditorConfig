""""""""""""""""""""""""""""""""""""""""""""
"基本配置"
""""""""""""""""""""""""""""""""""""""""""""
scriptencoding utf-8
set nocompatible             " 关闭兼容模式

"编码设置
"http://edyfox.codecarver.org/html/vim_fileencodings_detection.html
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

colorscheme molokai          " 配色 
autocmd ColorScheme * highlight Visual ctermbg=gray ctermfg=blue
autocmd ColorScheme * highlight NonText ctermfg=red
set guifont=Monaco:h14       " 适合开发的字体 && 字号

set tabstop=4                " 设置tab键的宽度
set shiftwidth=4             " 缩进宽度使用4个空格
set softtabstop=4            " 编辑模式下tab宽度
set smarttab                 " 在行首输入tab时，插入宽度为shiftwidth
set noexpandtab              " 不自动展开tab

set autoindent               " 自动对齐
set cindent                  " 自动缩进4空格
set smartindent              " 智能自动缩进

set number                   " 显示行号
set mouse=a                  " 启用鼠标
set ruler                    " 右下角显示光标位置的状态行

set backspace=2              " 设置退格键可用

set ignorecase               " 搜索忽略大小写
set incsearch                " 查找book时，当输入/b时会自动找到
set hlsearch                 " 开启高亮显示结果
set nowrapscan               " 搜索到文件两端时不重新搜索

set vb t_vb=                 " 关闭提示音
set list                     " 显示非可见字符
" 使用特殊符号展示不可见字符
" 输入:digraphs后查找特殊字符
" 特殊字符输入方法：进入插入状态，点击C_k快捷键，输入编码(例如:Rr)
set listchars=eol:⑆,trail:▒,precedes:☜,extends:☞,tab:\|\-,

syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全

let mapleader=" "
map <leader>v "+p
map <leader>c "+y
