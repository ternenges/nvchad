return {
  ["Pocco81/AutoSave.nvim"] = {
    after = "nvim-lspconfig",
    setup = function()
      require("core.lazy_load").on_file_open "AutoSave.nvim"
    end,
    config = function()
      require "custom.plugins.autosave"
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null_ls"
    end,
  },
  --defaults redefined start

  ["goolord/alpha-nvim"] = { disable = false },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["hrsh7th/nvim-cmp"] = {
    after = "friendly-snippets",
    config = function()
      require "custom.plugins.cmp"
    end,
  },
  --defaults redefined end
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

  -- debuggers
  ["puremourning/vimspector"] = {
    config = function()
      require "custom.plugins.vimspector"
    end,
  },
  --[[ ["Pocco81/dap-buddy.nvim"] = { }, ]]
  ["rcarriga/nvim-dap-ui"] = {},
  ["nvim-telescope/telescope-dap.nvim"] = {},
  ["jbyuki/one-small-step-for-vimkind"] = {},
  ["mxsdev/nvim-dap-vscode-js"] = {},
  ["microsoft/vscode-js-debug"] = {
    opt = true,
    run = "npm install --legacy-peer-deps && npm run compile",
  },

  ["terryma/vim-multiple-cursors"] = {
    setup = function()
      require("core.lazy_load").on_file_open "vim-multiple-cursors"
    end,
  },

  ["kdheepak/lazygit.nvim"] = {
    after = "telescope.nvim",
    setup = function()
      require("core.lazy_load").on_file_open "lazygit.nvim"
    end,
    config = function()
      require "custom.plugins.lazygit"
    end,
  },
  ["preservim/tagbar"] = {},

  ["mrjones2014/smart-splits.nvim"] = {
    setup = function()
      require("core.lazy_load").on_file_open "smart-splits.nvim"
    end,
    config = function()
      require "custom.plugins.smartsplits"
    end,
  },
  -- copilot
  ["github/copilot.vim"] = { after = "nvim-cmp" },
  --cmp extensions
  ["hrsh7th/cmp-cmdline"] = { after = "nvim-cmp" },
  ["ray-x/cmp-treesitter"] = { after = "nvim-cmp" },
  ["KadoBot/cmp-plugins"] = { after = "nvim-cmp" },
  ["rcarriga/cmp-dap"] = { after = "nvim-cmp" },
  ["hrsh7th/cmp-copilot"] = { after = "nvim-cmp" },
}
