-- example file i.e lua/custom/init.lua
-- load your options globals, autocmds here or anything .__.
-- you can even override default options here (core/options.lua)

local autocmd = vim.api.nvim_create_autocmd

autocmd("BufEnter", {
  callback = require("lazygit").utils.project_root_dir,
})
