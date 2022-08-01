local ok, autosave = pcall(require, "autosave")
if ok then
  local M = autosave.setup {
    {
      enabled = true,
      execution_message = {
        message = function()
          return ("AutoSave: saved at " .. vim.fn.strftime "%H:%M:%S")
        end,
        dim = 0.18,
        cleaning_interval = 1250,
      },
      trigger_events = { "InsertLeave", "TextChanged" },
      write_all_buffers = true,
      debounce_delay = 135,
    },
  }
  return M
end
