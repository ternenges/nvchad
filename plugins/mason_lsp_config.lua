local is_ok, masonLspConfig = pcall(require, "mason-lspconfig")

if is_ok then
  masonLspConfig.setup {
    ensure_installed = { "sumnako_lua", "tsserver", "prettied" },
    automatic_istallation = true,
  }
end
