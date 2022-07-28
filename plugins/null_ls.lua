local ok, null_ls = pcall(require, "null-ls")

if not ok then
  return
end

local b = null_ls.builtins

local sources = {
  -- Set a formatter
  b.formatting.fixjson,
  b.formatting.stylua,
  b.formatting.prettierd.with {
    extra_filetypes = { "svelte" },
  },
  -- Set a linter
  b.diagnostics.stylelint,
  b.diagnostics.eslint_d,
  b.diagnostics.luacheck,
  b.diagnostics.tsc,
  b.diagnostics.zsh,
  -- set for code actions
  b.code_actions.refactoring,
  b.hover.dictionary,
  -- set a completer
}
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format {
            bufnr = bufnr,
            filter = function()
              return client.name == "null-ls"
            end,
          }
        end,
      })
    end
  end,
}
