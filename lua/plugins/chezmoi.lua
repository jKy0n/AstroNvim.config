return {
  -- Outros plugins
  {
    "xvzc/chezmoi.nvim",
    config = function()
      require("chezmoi").setup({
        -- Adicione configurações personalizadas aqui, se necessário
      })
    end,
  },
}   
