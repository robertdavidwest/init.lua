local lsp_zero = require('lsp-zero')


lsp_zero.on_attach(function(_, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
  vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, opts)
end)

require('mason').setup({})
-- Manual LSP setup
require('lspconfig').lua_ls.setup(lsp_zero.nvim_lua_ls())
require('lspconfig').jsonls.setup({})
require('lspconfig').pylsp.setup({
  settings = {
    pylsp = {
      plugins = {
        -- Linting - these catch errors and undefined variables
        pycodestyle = {
          enabled = true,
          maxLineLength = 88,
          ignore = {} -- Don't ignore any warnings
        },
        pyflakes = {
          enabled = true -- This should catch undefined variables
        },
        pylint = { enabled = true },
        mccabe = { enabled = true, threshold = 15 },

        -- Formatting
        autopep8 = { enabled = false },
        black = { enabled = true, line_length = 88 },
        yapf = { enabled = false },

        -- Import sorting
        pyls_isort = { enabled = true },

        -- Type checking
        pylsp_mypy = { enabled = false },

        -- Rope for refactoring
        rope_completion = { enabled = true },
        rope_autoimport = { enabled = true },

        -- Ensure Jedi is enabled for comprehensive analysis
        jedi_completion = { enabled = true },
        jedi_hover = { enabled = true },
        jedi_references = { enabled = true },
        jedi_signature_help = { enabled = true },
        jedi_symbols = { enabled = true },
      }
    }
  }
})
require('lspconfig').eslint.setup({})


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'nvim_lua'},
  },
  formatting = lsp_zero.cmp_format(),
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
})
