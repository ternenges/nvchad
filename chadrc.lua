-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:
local overrides = require "custom.plugins.override"
M.ui = {
  theme = "gruvbox",
  theme_toggle = { "onedark", "one_light" },
}

M.plugins = {
  user = require "custom.plugins",
  override = {
    ["kyazdani42/nvim-tree.lua"] = overrides.nvimtree,
    ["folke/which-key.nvim"] = overrides.which_key,
    ["NvChad/ui"] = overrides.ui,
    ["neovim/nvim-lspconfig"] = overrides.lspconfig,
    ["hrsh7th/cmp-nvim"] = overrides.cmp,
    ["nvim-treesitter/nvim-treesitter"] = overrides.treesitter,
  },
  remove = {},
}
M.mappings = require "custom.mappings"
return M
