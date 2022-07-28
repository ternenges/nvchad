local ok, trouble = pcall(require, "trouble")

if not ok then
  return
end

local opts = {
  mode = "document_diagnostics",
  position = "bottom",
  auto_open = false,
  auto_close = true,
}

trouble.setup(opts)
