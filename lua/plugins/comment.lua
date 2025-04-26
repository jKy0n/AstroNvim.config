return {
  "numToStr/Comment.nvim",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("Comment").setup({
      mappings = {
        basic = false, -- desativa o <leader>/ padrão
        extra = false,
      },
    })

    local api = require("Comment.api")

    -- Normal Mode: comenta a linha
    vim.keymap.set("n", "<C-_>", api.toggle.linewise.current, { desc = "Comment line (Ctrl+/)" })

    -- Comentar no Visual Mode
    vim.keymap.set("v", "<C-_>", function()
      -- Sai do visual mode e comenta a seleção
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "x", true)
      api.toggle.linewise(vim.fn.visualmode())
    end, { desc = "Comment selection (Ctrl+/)" })
  end,
}
