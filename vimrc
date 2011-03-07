" colorscheme zenburn
filetype plugin on
filetype plugin indent on
set background=dark
syntax on

colorscheme desert256
" Настройка меню автодополнения
highlight Pmenu ctermbg=grey ctermfg=black
highlight PmenuSel ctermbg=blue ctermfg=white
highlight Pmenu guifg=#CCCCCC guibg=#0f0f0f 
highlight PmenuSel guifg=#AAAAAA guibg=#222222

set guifont=Terminus\ 16
" Включаем несовместимость настроек с Vi (ибо Vi нам и не понадобится).
set nocompatible
" Показывать положение курсора всё время.
set ruler  
" Показывать незавершённые команды в статусбаре
set showcmd  
" Включаем нумерацию строк
set nu
" Фолдинг по отсупам
set foldmethod=syntax
set foldcolumn=3
" Поиск по набору текста (очень полезная функция)
set incsearch
" Отключаем подстветку найденных вариантов, и так всё видно.
set nohlsearch
" Теперь нет необходимости передвигать курсор к краю экрана, чтобы подняться в режиме редактирования
set scrolljump=7
" Теперь нет необходимости передвигать курсор к краю экрана, чтобы опуститься в режиме редактирования
set scrolloff=7
" Выключаем надоедливый "звонок"
set novisualbell
set t_vb=   
" Поддержка мыши
set mouse=a
set mousemodel=popup
" Кодировка текста по умолчанию
set termencoding=utf-8
" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden
" Скрыть панель в gui версии ибо она не нужна
set guioptions-=T
set guioptions-=m

" Сделать строку команд высотой в одну строку
set ch=2
" Скрывать указатель мыши, когда печатаем
set mousehide
" Включить автоотступы
set autoindent
" allow to use backspace instead of "x"
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Преобразование Таба в пробелы
set expandtab
" Размер табулации по умолчанию
set shiftwidth=4
set softtabstop=4
set tabstop=4
" Формат строки состояния
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P 
set laststatus=2
" Включаем "умные" отспупы ( например, автоотступ после {)
set smartindent
" 2009-04-19 added
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251 " Возможные кодировки файлов, если файл не в unicode кодировке,
" то будет использоваться cp1251
""autocmd BufWritePre *.py normal m`:%s/\s\+$//e `` " Убирать пробелы в конце строки
" Fix <Enter> for comment
set fo+=cr
" Опции сесссий
set sessionoptions=curdir,buffers,tabpages

"-------------------------
" Горячие клавишы
"-------------------------
" Просмотр буферов
map <F2> \be
map <S-F2> \bs
"NERDTree
map  <F3> :NERDTreeToggle<cr>
" Открыть project
""map <F5> :Tl<cr>
nmap <silent> <F4> <Plug>ToggleProject

" F11 - показать окно Taglist
map <F5> :TlistToggle<cr>
vmap <F5> <esc>:TlistToggle<cr>
imap <F5> <esc>:TlistToggle<cr>
"

" Пробел в нормальном режиме перелистывает страницы
nmap <Space> <PageDown>

" CTRL-F для omni completion
imap <C-F> <C-X><C-O>
" C-c and C-v - Copy/Paste в "глобальный клипборд"
vmap <C-C> "+yi
imap <C-V> <esc>"+gPi
" Заставляем shift-insert работать как в Xterm
map <S-Insert> <MiddleMouse>
" Поиск и замена слова под курсором
nmap ; :%s/\<<c-r>=expand("<cword>")<cr>\>/
" < & > - делаем отступы для блоков
vmap < <gv
vmap > >gv
" Выключаем ненавистный режим замены
imap >Ins> <Esc>i


" Автодополнение.
"autocmd FileType python set omnifunc=pysmell#Complete
let python_highlight_all=1
"Pydiction
"let g:pydiction_location = '/home/apkawa/.vim/__source/pydiction-1.2/complete-dict' 
" Tab autocompletion 
"
set complete+=. 
set complete+=k 
set complete+=b 
set complete+=t 
set completeopt-=preview 
set completeopt+=longest 



"imap <C-d> :call RopeShowDoc()<CR>
"map <C-d> :call RopeShowDoc()<CR>
"
let g:snips_author="Apkawa"

"bbcode
"function BBCodeFold(line)
"    let str = getline(a:line)
"    if str =~ '{'
"        return '>1'
"    elseif str =~ '}'
"        return '<1'
"    else
"        return foldlevel(a:line - 1)
"   endif
"endfun

autocmd bufread *.bbcode set filetype=bbcode
"autocmd bufread *.bbcode set foldexpr=BBCodeFold(v:lnum)
"autocmd bufread *.bbcode set foldmethod=expr

let g:EclimHome = '/usr/share/vim/vimfiles/eclim'
let g:EclimEclipseHome = '/usr/share/eclipse'
