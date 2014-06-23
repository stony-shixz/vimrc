
" colorscheme
let g:solarized_italic = 0
if has("gui_running")		
    set background=light
    colorscheme solarized
else
    colorscheme solarized
    let g:colors_name="solarized"
endif

" nerdtree workspace
function! NERDTreeWorkSpace()
	if !exists("g:workspace")
		execute "NERDTree"
	else	
		execute "NERDTree " . g:workspace
	endif
endfunction
let NERDTreeChDirMode=2
map <leader>nw  :call NERDTreeWorkSpace()<cr>

" auto format code
map <leader>af :%!astyle --style=google --ascii<cr>

" syntastic 
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_config_file = 'syntastic'
