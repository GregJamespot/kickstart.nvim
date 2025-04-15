local opts = {
  settings = {
    bashIde = {
      shellcheckArguments = '', -- optional
    },
  },
  on_attach = function(client, bufnr)
    -- Set formatting options per buffer
    vim.bo[bufnr].shiftwidth = 2 -- Set tab width to 2 spaces
    vim.bo[bufnr].tabstop = 2
    vim.bo[bufnr].expandtab = true -- Use spaces instead of tabs
  end,
}

return opts
