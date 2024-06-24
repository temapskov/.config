local lspconfig = require('lspconfig')

-- Настройка LSP серверов
-- local servers = { 'pyright', 'tsserver', 'html', 'cssls', 'bashls', 'jsonls', 'clangd' }
local servers = { 'ruff_lsp' }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    on_attach = function(client, bufnr)
      local buf_map = function(bufnr, mode, lhs, rhs, opts)
        vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts or { silent = true })
      end

      buf_map(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>')
      buf_map(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>')
      buf_map(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
      buf_map(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
      buf_map(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
      buf_map(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
      buf_map(bufnr, 'n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
      buf_map(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
      buf_map(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
      buf_map(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
      buf_map(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
      buf_map(bufnr, 'n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>')
      buf_map(bufnr, 'n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
      buf_map(bufnr, 'n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')
      buf_map(bufnr, 'n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>')
    end,
  }
end
