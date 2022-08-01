local is_ok, splits = pcall(require, "smart-splits")

if not is_ok then
  return
end

splits.setup {
  ignore_buftypes = {},
  resize_mode = {
    silent = true,
    hooks = {
      on_enter = function()
        vim.notify "leaving resize mode"
      end,
      on_leave = function()
        vim.notify "leaving resize mode"
      end,
    },
  },
}
