execute pathogen#infect()

syntax enable
" defaults
set number
set showmatch
set backspace=indent,eol,start
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>OO
filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
" Ale
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
" commandT
  if &term =~ "xterm" || &term =~ "screen"
    let g:CommandTCancelMap = ['<ESC>', '<C-c>']
  endif
" lightline
set noshowmode
set laststatus=2
" nerdTree
map <C-o> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeMapActivateNode='<right>'
" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1"
" IndentLine
let g:indentLine_color_term = 239
" Delphinus
let g:lightline_delphinus_use_powerline_glyphs = 1
let g:lightline_delphinus_colorscheme = "nord_improved"
" Nord
set termguicolors
let g:nord_underline = 1
let g:nord_comment_brightness = 15
let g:nord_cursor_line_number_background = 1
colorscheme nord
