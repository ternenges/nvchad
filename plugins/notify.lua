local ok, notify = pcall(require, "notify")

if not ok then
  return
end
local config = { stages = "slide", render = "default", timeout = 3000 }

vim.notify = notify
notify.setup(config)
