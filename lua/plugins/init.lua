
local nav_conf = require "configs.tmux-navigator"

return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "christoomey/vim-tmux-navigator",
    cmd = nav_conf.cmd,
    keys = nav_conf.keys,
  },

  {
    "lervag/vimtex",
    lazy=false,
    init = function()
    end
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = require "configs.treesitter",
  },
}
