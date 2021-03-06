let g:coc_global_extensions =[
\'coc-css',
\'coc-eslint',
\'coc-json',
\'coc-prettier',
\'coc-python',
\'coc-snippets',
\'coc-tsserver',
\'coc-vimlsp',
\'coc-html', 
\'coc-highlight',
\'coc-lists',
\'coc-flutter',
\'coc-styled-components',
\'coc-solargraph',
\'coc-angular',
\'coc-fzf-preview',
\'coc-ultisnips',
\'coc-neosnippet',
\'coc-elixir',
\'coc-python',
\'coc-tailwindcss']
"coc-lists(word grep)
" grep word under cursor
" command! -nargs=+ -complete=custom,s:GrepArgs Rg exe 'CocList grep '.<q-args>
"coc-list end



" ruby
" let g:coc_global_extensions = ['coc-solargraph']

" let g:coc_snippet_next = '<tab>'
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport') " import 할 때 필요 
command! -nargs=0 OR :call CocAction('runCommand', 'tsserver.organizeImports')" import 할 떄 필요 
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac  <Plug>(coc-codeaction)
" nmap <silent><leader><space>c <Plug>(coc-codelens-action)
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)


let g:coc_filetype_map = { '*.mdx': 'mdx' }




