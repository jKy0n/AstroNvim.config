return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
      lazy = false, -- ⚠️ Se o Neovim ficar lento no startup, considerar reativar o lazy-loading
    config = function()
      require("toggleterm").setup({
        -- Configurações que você pode ajustar
        size = 20, -- Tamanho do terminal horizontal
        -- open_mapping = [[<C-\>]], -- Atalho para abrir/fechar o terminal
        -- open_mapping = [[<F4>]],
        hide_numbers = true, -- Ocultar números de linha no terminal
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2, -- Escurece o terminal
        start_in_insert = true,
        insert_mappings = true, -- Mapeamentos no modo insert
        persist_size = true,
        direction = 'horizontal', -- Direções: 'vertical', 'horizontal', 'tab', 'float'
        float_opts = {
          border = 'curved', -- Opções: 'single', 'double', 'shadow', 'curved'
          winblend = 0,
          highlights = {
            border = "Normal",
            background = "Normal",
          },
        },
      })
      -- Aqui fazemos o mapeamento manual CORRETO
      vim.keymap.set("n", "<F4>", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })
    end,
  }
}
