execute pathogen#infect()

" set dir=~/.vim/tmp
set noswapfile
set switchbuf=useopen,usetab

syntax on

filetype plugin indent on

" GO related
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

nmap <F8> :TagbarToggle<CR>

colorscheme elflord

let g:go_list_type = "quickfix"
let g:go_def_mode = 'guru'
let g:go_fmt_command = 'goimports'

" C related
" set shiftwidth=4 tabstop=4
set foldmethod=indent
set hlsearch
set autowrite

let Gtags_Auto_Map = 1

set cscopetag
set csprg=gtags-cscope                                             


cs add GTAGS .

au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

" au FileType java set tags=~/.tags
