call plug#begin('~/.vim/plugged')
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
"`Plug 'tomasiser/vim-code-dark'
Plug 'google/vim-glaive'
call plug#end()

call glaive#Install()
augroup autoformat_settings
	autocmd FileType bzl AutoFormatBuffer buildifier
	autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
	autocmd FileType dart AutoFormatBuffer dartfmt
	autocmd FileType go AutoFormatBuffer gofmt
	autocmd FileType gn AutoFormatBuffer gn
	autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
	autocmd FileType java AutoFormatBuffer google-java-format
	autocmd FileType python AutoFormatBuffer yapf
	autocmd FileType rust AutoFormatBuffer rustfmt
	autocmd FileType vue AutoFormatBuffer prettier
augroup END

nnoremap ; :
nnoremap : ;

nnoremap H gT
nnoremap L gt

let g:netrw_altv=1
