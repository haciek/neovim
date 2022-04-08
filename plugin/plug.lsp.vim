" luafile $XDG_CONFIG_HOME/nvim/lua/plug.lsp.lua

nnoremap <silent>gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent>gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent>gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent>gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent>K <cmd>lua vim.lsp.buf.hover()<CR>
nmap <silent><C-\> <cmd>lua vim.lsp.buf.signature_help()<CR>

nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>

command! Format lua vim.lsp.buf.formatting_sync(nil, 100)
