local M = {}

M.exit = {
  n = {
    ["<leader>q"] = { "<cmd> q <CR>", "  exit window" },
  },
}
M.disabled = {
  n = {
    ["<leader>v"] = "",
  },
}

M.trouble = {
  n = {
    ["<leader>X"] = { "<cmd> TroubleToggle<CR>", "troubleshot" },
    ["<leader>Xw"] = { "<cmd> TroubleToggle workspace_diagnostics<CR>", "troubleshot workspace" },
    ["<leader>Xd"] = { "<cmd> TroubleToggle document_diagnostics<CR>", "troubleshot document" },
    ["<leader>Xq"] = { "<cmd> TroubleToggle quickfix<CR>", "quickfix" },
  },
}

M.re_init = {
  n = {
    ["<leader>S"] = { "<cmd> source $HOME/.config/nvim/init.lua<CR>", " Refresh INIT" },
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

M.lspconfig = {
  -- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions

  n = {
    ["gD"] = {
      function()
        vim.lsp.buf.declaration()
      end,
      "   lsp declaration",
    },

    ["gd"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "   lsp definition",
    },

    ["K"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "   lsp hover",
    },

    ["gi"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "   lsp implementation",
    },

    ["<leader>ls"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "   lsp signature_help",
    },

    ["<leader>D"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "   lsp definition type",
    },

    ["<leader>ra"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "   lsp rename",
    },

    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "   lsp code_action",
    },

    ["gr"] = {
      function()
        vim.lsp.buf.references()
      end,
      "   lsp references",
    },

    ["<leader>ld"] = {
      function()
        vim.diagnostic.open_float()
      end,
      "   floating diagnostic",
    },

    ["[d"] = {
      function()
        vim.diagnostic.goto_prev()
      end,
      "   goto prev",
    },

    ["d]"] = {
      function()
        vim.diagnostic.goto_next()
      end,
      "   goto_next",
    },

    ["<leader>lq"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "   diagnostic setloclist",
    },

    ["<leader>lf"] = {
      function()
        vim.lsp.buf.format({async = true})
      end,
      "   lsp formatting",
    },

    ["<leader>wa"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      "   add workspace folder",
    },

    ["<leader>wr"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      "   remove workspace folder",
    },

    ["<leader>wl"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "   list workspace folders",
    },
  },
}return M
