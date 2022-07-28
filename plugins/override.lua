local M = {}
M.nvimtree = {
  view = { width = "10%" },
  actions = {
    open_file = { quit_on_open = true },
  },
  renderer = {
    icons = {
      show = {
        folder_arrow = false,
      },
      glyphs = {
        folder = {
          default = "",
          open = "",
          empty = "",
        },
      },
    },
  },
}

M.which_key = {
  plugins = { spelling = { enabled = true } },
  window = {
    padding = { 2, 2, 2, 2 },
  },
  layout = {
    height = { min = 4, max = 25 },
    width = { min = 20, max = 50 },
    spacing = 6,
    align = "left",
  },
  ignore_missing = true,
}
M.ui = { statusline = { separator_style = "arrow" } }

M.cmp = function()
  --  local cmp = require"cmp"
  return {
    -- ["<CR>"] = cmp.mapping.confirm {
    --   behavior = cmp.ConfirmBehavior.Replace,
    --   select = true,
    -- },
  }
end

M.treesitter = {
  autoinstall = true,
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  autopairs = { enable = true },
  incremental_selection = { enable = true },
  indent = { enable = true },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },
}
return M
