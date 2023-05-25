vim.keymap.set("n", "<c-t>", require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<c-g>', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<c-b>', require('telescope.builtin').buffers, { desc = '[S]earch by [B]uffers' })
vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<CR>')

vim.api.nvim_exec([[
augroup ansible_vim_fthosts
  autocmd!
  autocmd BufNewFile,BufRead hosts,*.yml,*.yaml set filetype=yaml.ansible
augroup END
]], false)

return {}
