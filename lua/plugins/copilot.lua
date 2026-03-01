return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      panel = {
        enabled = false, -- desative o painel lateral se não usar
      },
      suggestion = {
        enabled = true,
        auto_trigger = true,        -- ativa sugestões automáticas
        debounce = 75,              -- tempo em ms
        keymap = {                  -- atalhos úteis
          accept = "<Tab>",         -- aceita suggestionstion
          accept_word = "<Right>",  -- aceita a palavra inteira
          -- prev = "<C-[>",        -- navega entre sugestões (Anterior)
          -- next = "<C-]>",        -- navega entre sugestões (Próxima)
          dismiss = "<Esc>",        -- descarta a sugestão
        },
      },
    })
  end, -- fim do codigo, sleep well
}