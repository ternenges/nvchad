return {
  ["Pocco81/AutoSave.nvim"] = {
    setup = function()
      require("core.lazy_load").on_file_open "AutoSave.nvim"
    end,
    config = function()
      require "custom.plugins.autosave"
    end,
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null_ls"
    end,
  },
  ["goolord/alpha-nvim"] = { disable = false },
  ["preservim/tagbar"] = {},
  ["mfussenegger/nvim-dap"] = {},
  ["rcarriga/nvim-notify"] = {
    setup = function()
      require("core.lazy_load").on_file_open "nvim-notify"
    end,
    config = function()
      require "custom.plugins.notify"
    end,
  },
  ["folke/trouble.nvim"] = {
    setup = function()
      require("core.lazy_load").on_file_open "trouble.nvim"
    end,
    config = function()
      require "custom.plugins.trouble"
    end,
  },
  ["terryma/vim-multiple-cursors"] = {
    setup = function()
      require("core.lazy_load").on_file_open "vim-multiple-cursors"
    end,
  },
  ["williamboman/mason-lspconfig.nvim"] = {
    after = "nvim-lspconfig",
    setup = function()
      require("core.lazy_load").on_file_open "mason-lspconfig.nvim"
    end,
    config = function()
      require "custom.plugins.mason_lsp_config"
    end,
  },

  ["windwp/nvim-ts-autotag"] = {
    setup = function()
      require("core.lazy_load").on_file_open "nvim-ts-autotag"
    end,
  },
  ["p00f/nvim-ts-rainbow"] = {
    setup = function()
      require("core.lazy_load").on_file_open "nvim-ts-rainbow"
    end,
  },
}
