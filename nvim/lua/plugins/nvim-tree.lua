-- lua/plugins/nvim-tree.lua

-- Подключение и настройка nvim-tree
require('nvim-tree').setup({
  update_cwd = true,
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  diagnostics = {
    enable = true,
  },
  git = {
    enable = true,
  },
})

-- Установите клавиши для открытия nvim-tree
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

