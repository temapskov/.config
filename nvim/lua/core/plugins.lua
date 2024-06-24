-- PlugInstall
local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Plugins
Plug('morhetz/gruvbox')                     -- Тема gruvbox
Plug('github/copilot.vim')                  -- Плагин для Copilot

-- nvim-tree
Plug('nvim-tree/nvim-web-devicons')         -- Иконки для дерева файлов
Plug('nvim-tree/nvim-tree.lua')             -- Дерево файлов

-- Telescope + fzf
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.6' })
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' })
Plug('nvim-telescope/telescope-live-grep-args.nvim')
Plug('nvim-lua/plenary.nvim')
Plug('Ilyasyoy/coredor.nvim')

-- LSP
Plug('neovim/nvim-lspconfig')               -- Конфигурация LSP
Plug('hrsh7th/nvim-cmp')                    -- Автодополнение
Plug('hrsh7th/cmp-nvim-lsp')                -- LSP для автодополнения
Plug('hrsh7th/cmp-buffer')                  -- Буфер для автодополнения
Plug('hrsh7th/cmp-path')                    -- Путь для автодополнения
Plug('hrsh7th/cmp-cmdline')                 -- Командная строка для автодополнения
Plug('saadparwaiz1/cmp_luasnip')            -- Сниппеты для автодополнения
Plug('L3MON4D3/LuaSnip')                    -- Сниппеты для автодополнения

vim.call('plug#end')
