-- Base Settings
vim.opt.encoding = "utf-8"              -- Кодировка
vim.opt.fileformat = "unix"             -- Формат файла по умолчанию
vim.opt.swapfile = false                -- Отключение создания swap файла
vim.opt.shell = "/bin/zsh"              -- Shell по-умолчанию
vim.opt.termguicolors = true            -- Поддержка цвета
vim.g.netrw_banner = 0                  -- Отключение баннера
vim.g.netrw_liststyle = 3               -- Показывать дерево
vim.g.netrw_browse_split = 3            -- Открывать в новой вкладке

-- Разделитель на 79 символов
vim.opt.colorcolumn = "79"              -- Разделитель на 79 символов

-- Mouse
vim.opt.mouse = "a"                     -- Включить мышь

-- Line Numbers
vim.opt.number = true                   -- Показывать номера строк
vim.opt.relativenumber = true           -- Показывать относительные от текущей позиции номера строк

-- Indent Settings
vim.opt.expandtab = true                -- Заменить tab на пробелы
vim.opt.softtabstop = 4                 -- 
vim.opt.shiftwidth = 4                  -- 
vim.opt.tabstop = 4                     -- Отступ по tab
vim.opt.autoindent = true               -- Включить автоматический отступ
vim.opt.smartindent = true              -- Копировать отступ на новой строке

-- Scroll
vim.opt.so = 5                          -- Относительный позиции скроллинг

-- Подсветка висящих пробелов и табов
vim.opt.list = true                     -- Включение
vim.opt.listchars = "tab:->,trail:⋅"    -- Замена таб = ->, пробел = ⋅

-- Search
vim.opt.hlsearch = true                 -- Подсветка найденого фрагмента
vim.opt.ignorecase = true                -- Игнорировать регистр при поиске
vim.opt.smartcase = true                -- Не игнорировать реестр, если в поисковой строке есть заглавные буквы

