
return {
   'rhysd/vim-clang-format',
   lazy = true,
   ft = {
      'c',
      'cpp',
      'cs',
   },
   config = function()
      vim.cmd[[let g:clang_format#code_style='llvm' ]]
   end
}
