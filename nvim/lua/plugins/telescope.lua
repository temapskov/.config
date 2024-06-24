-- Настройка компонента Telescope + fzf
local builtin = require('telescope.builtin')

require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
require('telescope').load_extension('fzf')
require("telescope").load_extension("live_grep_args")

-- Работа с файлами и буфферам
-- Live Grep = ,gg
-- Find File = ,ff
vim.keymap.set('n', '<leader>ff', function()
    builtin.find_files()
end, { desc = "find files" })

vim.keymap.set("n", "<leader>fg", function()
    builtin.live_grep()
end, { desc = "find grep through files" })

vim.keymap.set("n", "<leader>fC", function()
    builtin.commands()
end, { desc = "find commands" })

vim.keymap.set("n", "<leader>Fg", function()
    telescope.extensions.live_grep_args.live_grep_args()
end, { desc = "find grep through files with args" })

vim.keymap.set("n", "<leader>fB", function()
    builtin.current_buffer_fuzzy_find()
end, { desc = "find current buffer" })

vim.keymap.set("n", "<leader>fb", function()
    builtin.buffers()
end, { desc = "find buffers" })

