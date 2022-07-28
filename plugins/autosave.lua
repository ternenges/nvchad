local ok, autosave = pcall(require, "autosave")
if ok then
  local M = autosave.setup {
    enable = true,
    execution_massage = "AutoSave: saved at " .. vim.fn.strftime "%H%M%S",
    events = { "InsertLeave", "TextChanged" },
    conditions = {
      exists = true,
      modifiable = true,
    },
    write_all_buffers = true,
    clean_command_line = 800,
    debounce_delay = 135,
  }
  return M
end
