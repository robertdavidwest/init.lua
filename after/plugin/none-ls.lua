local null_ls = require("null-ls")

-- Create autogroup for formatting
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- Only use formatters that are definitely available
local formatting = null_ls.builtins.formatting

null_ls.setup({
  sources = {
    -- Python formatting - black should work since it's already installed
    formatting.black,
  },

  -- Format on save (optional)
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({
            filter = function(client)
              return client.name == "null-ls"
            end,
            bufnr = bufnr,
          })
        end,
      })
    end
  end,
})

