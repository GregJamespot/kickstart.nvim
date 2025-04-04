local ensure_installed = require 'mason-lspconfig.ensure_installed'
require('lspconfig').bashls.setup {}

-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
local plugins = {
  {
    'jose-elias-alvarez/null-ls.nvim',
    ft = { 'python' },
    opts = function()
      return require 'custom.configs.null-ls'
    end,
  },
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        'pyright',
        'ruff',
        'mypy',
        'bashls',
      },
    },
  },
}

return plugins
