execute pathogen#infect()

" ******************************  Global VIM Settings **********

set omnifunc=syntaxcomplete#Complete                            " specifies a function to be used for Insert mode omni completion with CTRL-X CTRL-O

filetype on                                                     " enable file type detection
filetype indent on                                              " load filetype-specific indent files
filetype plugin on                                              " enable loading the plugin files for specific file
syntax on                                                       " switch syntax highlighting on according to the current value of the filetype
syntax enable                                                   " switches on syntax highlighting
set number                                                      " show line numbers
set showmatch                                                   " show matching brackets
set backspace=indent,eol,start                                  " set normal behaviour for backspace
set nowrap                                                      " lines will not wrap
set tabstop=4                                                   " number of spaces that a <Tab> in the file counts for
set shiftwidth=4                                                " number of spaces to use for each step of (auto)indent
set expandtab                                                   " In Insert mode: Use the appropriate number of spaces to insert a <Tab>
set smartindent                                                 " smart autoindenting when starting a new line
set autoindent                                                  " copy indent from current line when starting a new line
set cursorline                                                  " highlight the screen line of the cursor

" *******************************  CSS *************************
" vim-css3-syntax -> https://github.com/hail2u/vim-css3-syntax

augroup VimCSS3Syntax                                           " FIX: Some properties do not highlight correctly by default - May cause side effects
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

" *******************************  ALE *************************
" https://github.com/w0rp/ale - Asynchronous linting/fixing

let g:ale_echo_msg_error_str = nr2char(0xf421) . ' '
let g:ale_echo_msg_warning_str = nr2char(0xf420) . ' '
let g:ale_echo_msg_info_str = nr2char(0xf05a) . ' '
let g:ale_echo_msg_format = '%severity%  %linter% - %s'
let g:ale_sign_column_always = 1
let g:ale_sign_error = g:ale_echo_msg_error_str
let g:ale_sign_warning = g:ale_echo_msg_warning_str
let g:ale_statusline_format = [
      \ g:ale_echo_msg_error_str . ' %d',
      \ g:ale_echo_msg_warning_str . ' %d',
      \ nr2char(0xf4a1) . '  ']
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'css': ['prettier'],
\}
let g:ale_fix_on_save = 1
let g:ale_cache_executable_check_failures = 1

" *****************************  Command-t **********************
" https://github.com/wincent/command-t - Fast file navigation for VIM

if &term =~ "xterm" || &term =~ "screen"
    let g:CommandTCancelMap = ['<ESC>', '<C-c>']
endif

" lightline
set noshowmode
set laststatus=2
" *****************************  NerdTree  *****************************
" https://github.com/scrooloose/nerdtree - A tree explorer plugin for vim

map <C-o> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1                                                " show hidden files
let NERDTreeMapActivateNode='<right>'                                   " navigate with the right arrow key
let NERDTreeMinimalUI = 1                                               " disable - Press for help
" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
" IndentLine
let g:indentLine_color_term = 239
" Delphinus
let g:lightline_delphinus_use_powerline_glyphs = 1
let g:lightline_delphinus_colorscheme = "nord_improved"
" Nerd Commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Nord
set termguicolors
let g:nord_underline = 1
let g:nord_comment_brightness = 20
let g:nord_cursor_line_number_background = 1
colorscheme nord
