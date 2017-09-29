"" EasyAlign
xmap ga <Plug>(EasyAlign)
" Normal mode
nmap ga <Plug>(EasyAlign)

"" Latex (Latex-suite)
" let g:TeX_DefaultTargetFormat='pdf'
" " let g:TeX_ViewRule_pdf='evince'
" let g:Tex_ViewRule_pdf='mupdf'
" let g:TeX_MultipleCompileFormats='pdf, aux'
" let g:tex_flavor="latex"
" let g:Tex_CompileRule_pdf='latexmk -pdf -f'

"" VimTeX
let g:vimtex_view_method = 'mupdf'
let g:vimtex_compiler_latexmk = {'callback': 0}

"" Markdown
" Enable mardown for non-standard extensions
au! BufRead,BufNewFile *.markdown set filetype=mkd
au! BufRead,BufNewFile *.md set filetype=mkd

"" incsearch.vim
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-forward)


"" gtd.vim
let g:gtd#dir = '~/notes'
