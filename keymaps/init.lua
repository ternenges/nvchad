local M = {}
M.disabled = require "custom.keymaps.disabled"

M.exit = {
  n = {
    ["<C-q>"] = { "<cmd> q <CR>", "  exit window" },
  },
}

M.trouble = {
  n = {
    ["<leader>d"] = { "<cmd> TroubleToggle<CR>", "troubleshot" },
    ["<leader>dw"] = { "<cmd> TroubleToggle workspace_diagnostics<CR>", "troubleshot workspace" },
    ["<leader>dd"] = { "<cmd> TroubleToggle document_diagnostics<CR>", "troubleshot document" },
    ["<leader>df"] = { "<cmd> TroubleToggle quickfix<CR>", "quickfix" },
  },
}

M.mason = {
  n = {
    ["<leader>mm"] = { "<cmd> Mason<CR>", "Mason" },
    ["<leader>mi"] = { "<cmd> MasonInstallAll<CR>", "Mason Install All" },
    ["<leader>mu"] = { "<cmd> MasonUninstalAll<CR>", "Mason UnInstall All" },
    ["<leader>ml"] = { "<cmd> MasonLog<CR>", "Mason Log" },
  },
}
M.terminal = {}
M.splits = {
  n = {
    ["<s-l>"] = { "<cmd> vs <CR>", "vertical split" },
    ["<S-j>"] = { "<cmd> sp <CR>", "horizontal split" },
    ["<A-h>"] = {
      "<cmd> lua require('smart-splits').resize_left()<CR>",
      "resize_left",
    },
    ["<A-j>"] = {
      "<cmd>lua require('smart-splits').resize_down()<CR>",
      "resize_down",
    },
    ["<A-k>"] = {
      "<cmd>lua require('smart-splits').resize_up()<CR>",
      "resize_up",
    },
    ["<A-l>"] = {
      "<cmd>lua require('smart-splits').resize_right()<CR>",
      "resize_right",
    },
  },
}
M.lspconfig = require "custom.keymaps.lspconfig"
M.telescope = require "custom.keymaps.telescope"
return M
