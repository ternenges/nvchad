local vim = vim
local fn = vim.fn
local sep_style = vim.g.statusline_sep_style
local separators = (type(sep_style) == "table" and sep_style)
  or require("nvchad_ui.icons").statusline_separators[sep_style]
local sep_l = separators["left"]
--local sep_r = separators["right"]
return {
  LSP_status = function()
    if rawget(vim, "lsp") then
      for _, client in ipairs(vim.lsp.get_active_clients()) do
        if client.attached_buffers[vim.api.nvim_get_current_buf()] then
          return (vim.o.columns > 100 and "%#St_LspStatus#" .. "   LSP ◌ " .. client.name .. " ") or "   LSP "
        end
      end
    end
  end,

  cursor_position = function()
    local left_sep = "%#St_pos_sep#" .. sep_l .. "%#St_pos_icon#" .. "☲ "

    local current_line = fn.line "."
    local total_line = fn.line "$"
    local text = math.modf((current_line / total_line) * 100) .. tostring "%%"

    text = (current_line == 1 and "Top") or text
    text = (current_line == total_line and "Bot") or text

    return left_sep .. "%#St_pos_text#" .. " " .. text .. " "
  end,
}
