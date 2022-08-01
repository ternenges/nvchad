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

--M.cmp = require "custom.plugins.cmp"
M.which_key = {
  plugins = {
    marks = true,
    registers = true,
    spelling = { enabled = false },
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "  ", -- symbol used between a key and it's label
    group = "⬊ ", -- symbol prepended to a group
  },

  window = {
    padding = { 2, 2, 2, 2 },
  },
  layout = {
    height = { min = 4, max = 25 },
    width = { min = 20, max = 50 },
    spacing = 6,
    align = "left",
  },
  ignore_missing = false,
}
M.ui = {
  statusline = {
    separator_style = "round",
    overriden_Modules = function()
      local custom = require "custom.ui"
      return custom
    end,
  },
}
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

---{}
return M
